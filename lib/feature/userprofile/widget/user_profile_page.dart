import 'package:app/feature/userprofile/provider/user_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ;
    return Scaffold(
      appBar: AppBar(
        title: Text("User profile"),
      ),
      body: Center(child: _widgetContent(context, ref)),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userProfileProvider);

    return state.when(loading: () {
      return _widgetShimmer(context, ref);
    }, profileLoaded: (user) {
      return Column(children: [
        Row(
          children: [
            Text(user.userName),
          ],
        ),
        Row(
          children: [
            Text(user.saFork!.name),
          ],
        ),
        Row(
          children: [
            Text(user.saFork!.description),
          ],
        )
      ]);
    }, loggedOut: () {
      //TODO: have to extract it in an upper state
      return Container();
    });
  }

  Widget _widgetShimmer(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
