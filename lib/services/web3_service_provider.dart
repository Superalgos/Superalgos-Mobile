import 'dart:convert';
import 'dart:math';
import 'package:app/services/signature.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:ed25519_hd_key/ed25519_hd_key.dart';
import 'package:eth_sig_util/util/bytes.dart';
import 'package:eth_sig_util/util/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'dart:typed_data';
import 'package:app/utils/constants.dart';
import 'package:eth_sig_util/eth_sig_util.dart';
import 'package:eth_sig_util/util/keccak.dart';
import 'package:web3dart/web3dart.dart';
import 'package:convert/convert.dart';
import 'package:hex/hex.dart';



abstract class Web3Service {
  Future<BigInt> getWalletBalanceForUserAndSignature(
      String userName, String signature);

  Future<Signature> signData(String message, String privateKey);

  Future<ETHAccount> createAccount();

  Future<String> mnemonicToAddr(String mnemonic);
}

final web3ServiceProvider =
    Provider<Web3ServiceProvider>((ref) => Web3ServiceProvider());

class ETHAccount {
  final String privateKey;
  final String address;

  ETHAccount(this.privateKey, this.address);

  @override
  String toString() {
    return 'Account{privateKey: $privateKey, address: $address}';
  }
}

// This class replicates what web3js can do "natively"
// by extending existing Dart libraries for web3 interaction,
// It should not be modified unless you really know what are you doing :)

class Web3ServiceProvider implements Web3Service {
  @override
  Future<Signature> signData(String message, String privateKey) async {
    Uint8List bytes = Uint8List.fromList(message.codeUnits);

    var signatureString = SignatureUtil.signPersonalMessage(
        message: bytes, privateKey: privateKey);

    var ecdsaSignature = SignatureUtil.signToSignature(
        _getPersonalMessage(bytes), hexToBytes(privateKey));

    var stringSigValues = extractStringFromSig(
        ecdsaSignature.r, ecdsaSignature.s, ecdsaSignature.v);

    var signatureObject = Signature(
        message: message,
        messageHash: extractStringFromUint8List(_getPersonalMessage(bytes)),
        v: stringSigValues["v"]!,
        r: stringSigValues["r"]!,
        s: stringSigValues["s"]!,
        signature: signatureString);

    return signatureObject;
  }

  @override
  Future<BigInt> getWalletBalanceForUserAndSignature(
      String userName, String signature) async {
    final client = Web3Client(WEB3.web3URL, Client());

    final Uint8List bytes = Uint8List.fromList(userName.codeUnits);

    final String recoveredAddr = EthSigUtil.ecRecover(
        signature: signature, message: _getPersonalMessage(bytes));

    final ownAddr = EthereumAddress.fromHex(recoveredAddr);

    final contract = DeployedContract(
      ContractAbi.fromJson(WEB3.saABI, "Superalgos"),
      EthereumAddress.fromHex(WEB3.saContract),
    );

    const String functionName = "balanceOf";
    final function = contract.function(functionName);
    final balance = await client
        .call(contract: contract, function: function, params: [ownAddr]);

    await client.dispose();

    return EtherAmount.fromUnitAndValue(EtherUnit.wei, balance[0]).getInEther;
  }

  @override
  Future<String> mnemonicToAddr(String mnemonic) async {
    final normalizedMnemonic = _mnemonicNormalise(mnemonic);
    final bip39Mnemonic = bip39.mnemonicToEntropy(normalizedMnemonic);
    final seed = bip39.mnemonicToSeed(bip39Mnemonic);
    final master = await ED25519_HD_KEY.getMasterKeyFromSeed(seed,
        masterSecret: 'Bitcoin seed');
    final privateKey = HEX.encode(master.key);
    final private = EthPrivateKey.fromHex(privateKey);
    final address = await private.extractAddress();
    print('address: ${address.hexEip55}');
    return address.hexEip55;
  }

  @override
  Future<ETHAccount> createAccount() async {
    final rng = Random.secure();
    final key = EthPrivateKey.createRandom(rng);
    final address = await key.extractAddress();

    var ethAcc = ETHAccount(
        extractStringFromUint8List(key.privateKey), address.hexEip55);

    return ethAcc;
  }

  static Map<String, String> extractStringFromSig(BigInt r, BigInt s, int v) {
    var map = <String, String>{};

    var vUint8List = toBuffer(v);
    var rUint8List = toBuffer(r);
    var sUint8List = toBuffer(s);

    var rSig = fromSigned(rUint8List);
    var sSig = fromSigned(sUint8List);
    var vSig = bufferToInt(vUint8List);
    var rStr = _padWithZeroes(hex.encode(toUnsigned(rSig)), 64);
    var sStr = _padWithZeroes(hex.encode(toUnsigned(sSig)), 64);
    var vStr = stripHexPrefix(intToHex(vSig));

    map["r"] = addHexPrefix(rStr);
    map["s"] = addHexPrefix(sStr);
    map["v"] = addHexPrefix(vStr);

    return map;
  }

  static String extractStringFromUint8List(Uint8List message) {
    var msgHash = fromSigned(message);
    var msgHashStr = _padWithZeroes(hex.encode(toUnsigned(msgHash)), 64);

    return addHexPrefix(msgHashStr);
  }

  static String _padWithZeroes(String number, int length) {
    var myString = '' + number;
    while (myString.length < length) {
      myString = '0' + myString;
    }
    return myString;
  }

  static Uint8List _getPersonalMessage(Uint8List message) {
    final prefix = WEB3.ethMessagePrefix + message.length.toString();
    final prefixBytes = ascii.encode(prefix);
    return keccak256(Uint8List.fromList(prefixBytes + message));
  }

  String _mnemonicNormalise(String mnemonic) {
    return _mnemonicWords(mnemonic).join(' ');
  }

  List<String> _mnemonicWords(String mnemonic) {
    return mnemonic
        .split(' ')
        .where((item) => item != null && item.trim().isNotEmpty)
        .map((item) => item.trim())
        .toList();
  }
}
