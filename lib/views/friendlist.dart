import 'package:flutter/material.dart';
import 'package:task_6/auth/friend.dart';
import 'package:task_6/auth/userdata.dart';

class Friendlist extends StatelessWidget {
  Friendlist({super.key, required this.userdata});

  final Userdata userdata;

  var followTxtStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  Widget friend(Friend friend) => Card(
    child: Column(
      children: [
        Expanded(child: Image.asset(friend.img)), // Image.asset // Expanded
        Padding(padding: const EdgeInsets.all(8.0), child: Text(friend.name)),
      ],
    ), // Column
  ); // Card

  Widget friendListGrid() => GridView.builder(
    shrinkWrap: true,
    physics: const BouncingScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisExtent: 180,
    ), // SliverGridDelegateWithFixedCrossAxisCount
    itemCount: userdata.friendList.length,
    itemBuilder: (BuildContext ctx, int index) {
      return friend(userdata.friendList[index]);
    },
  ); // GridView.builder
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(children: [Text('Friends', style: followTxtStyle)]),
        ), // Row // Padding
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(children: [Text('${userdata.friendList.length} Friends')]),
        ), // Row // Padding
        const SizedBox(height: 10),
        SizedBox(height: 380, child: friendListGrid()),
        SizedBox(height: 10, child: Container(color: Colors.grey)),
      ],
    ); // Column
  }
}
