import 'package:flutter/material.dart';
import 'package:task_6/auth/userdata.dart';

class Mainheader extends StatelessWidget {
  Mainheader({super.key, required this.userdata});
  final Userdata userdata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(userdata.myUserAccount.img),
          radius: 40,
        ), // CircleAvatar
        Text(
          userdata.myUserAccount.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ), // TextStyle
        ), // Text
        Text(userdata.myUserAccount.email),
        const SizedBox(height: 20),
      ],
    ); // Column
  }
}
