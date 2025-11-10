import 'package:flutter/material.dart';
import 'package:task_6/auth/userdata.dart';

class Infoheader extends StatelessWidget {
  Infoheader({super.key, required this.userdata});
  final Userdata userdata;

  final followTxtStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text('Followers'),
                const SizedBox(height: 4),
                Text(
                  userdata.myUserAccount.numFollowers,
                  style: followTxtStyle,
                ),
              ],
            ),
            Column(
              children: [
                const Text('Following'),
                const SizedBox(height: 4),
                Text(
                  userdata.myUserAccount.numFollowing,
                  style: followTxtStyle,
                ),
              ],
            ),
            Column(
              children: [
                const Text('Posts'),
                const SizedBox(height: 4),
                Text(userdata.myUserAccount.numPosts, style: followTxtStyle),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(color: Colors.grey),
      ],
    );
  }
}
