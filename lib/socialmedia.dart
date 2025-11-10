import 'package:flutter/material.dart';
import 'package:task_6/auth/userdata.dart';
import 'package:task_6/views/friendlist.dart';
import 'package:task_6/views/infoheader.dart';
import 'package:task_6/views/mainheader.dart';
import 'package:task_6/views/postlist.dart';

class Socialmedia extends StatefulWidget {
  const Socialmedia({super.key});

  @override
  State<Socialmedia> createState() => _SocialmediaState();
}

class _SocialmediaState extends State<Socialmedia> {
  Userdata userdata = Userdata();

  var followTxtStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ), // // IconButton
      ), // // AppBar
      body: ListView(
        // shrinkWrap: true,
        children: [
          Mainheader(userdata: userdata),
          Infoheader(userdata: userdata),
          Friendlist(userdata: userdata),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [Text('Posts', style: followTxtStyle)],
            ), // // Row
          ), // // Padding
          Postlist(userdata: userdata),
        ],
      ), // // ListView
    ); // // Scaffold
  }
}
