import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'base_storage.dart';

BaseStorage createStorage() => SecureStorage();

class SecureStorage implements BaseStorage {
  static final FlutterSecureStorage storage = FlutterSecureStorage();

  SecureStorage();

  @override
  Future<String?> read(String key) async {
    final options = IOSOptions(accessibility: IOSAccessibility.first_unlock);
    return await storage.read(key: key, iOptions: options);
  }

  @override
  Future<void> write(String key, String value) async {
    final options = IOSOptions(accessibility: IOSAccessibility.first_unlock);
    return await storage.write(key: key, value: value, iOptions: options);
  }

  @override
  Future<void> delete(String key) async {
    final options = IOSOptions(accessibility: IOSAccessibility.first_unlock);
    return await storage.delete(key: key, iOptions: options);
  }
}
