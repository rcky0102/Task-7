import 'package:flutter/material.dart';
import 'package:task_6/auth/usercomment.dart';
import 'package:task_6/auth/userdata.dart';
import 'package:task_6/auth/userpost.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key, required this.userPost});

  final Userpost userPost;
  final Userdata userData = Userdata();

  var nametxtStyle = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  var boldtxtStyle = const TextStyle(fontWeight: FontWeight.bold);
  var boldtxtStyle1 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  Widget commentBtn(Usercomment userComment) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(userComment.commenterTime),
        const SizedBox(width: 15),
        const Text('Like'),
        const SizedBox(width: 15),
        const Text('Reply'),
      ],
    ), // Row
  ); // Padding

  Widget commentDesc(Usercomment userComment) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(userComment.commenterName, style: boldtxtStyle),
        const SizedBox(height: 5),
        Row(children: [Text(userComment.commenterContent)]),
      ],
    ), // Column
  ); // Padding

  Widget commentSpace(Usercomment userComment) => Container(
    decoration: const BoxDecoration(
      color: Color.fromARGB(35, 158, 158, 158),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ), // BoxDecoration
    child: commentDesc(userComment),
  ); // Container

  Widget commenterPic(Usercomment userComment) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: CircleAvatar(
      backgroundImage: AssetImage(userComment.commenterImg),
      radius: 20,
    ), // CircleAvatar
  ); // Container

  Widget usercommenterline(Userpost userPost, Usercomment userComment) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      commenterPic(userComment),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [commentSpace(userComment), commentBtn(userComment)],
      ), // Column
    ],
  ); // Row

  Widget userpostdetails(Usercomment userComment) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(height: 15),
      usercommenterline(userPost, userComment),
    ],
  ); // Column

  Widget commenters(Userpost userPost) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Divider(color: Colors.grey),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [Text(userPost.numshare, style: boldtxtStyle)]),
      ), // Padding
      const SizedBox(height: 15),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text('All comments', style: boldtxtStyle1),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ), // Padding
    ],
  ); // Column

  Widget buttons(Userpost userPost) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Divider(color: Colors.grey), // Divider
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: userPost.isliked ? Colors.grey : Colors.blue,
              ),
              onPressed: () {},
              icon: const Icon(Icons.thumb_up, size: 20),
              label: const Text('Like'),
            ), // TextButton.icon
            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble, size: 20),
              label: const Text('comment'),
            ), // TextButton.icon
            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              onPressed: () {},
              icon: const Icon(Icons.share, size: 20),
              label: const Text('Share'),
            ), // TextButton.icon
          ],
        ), // Row // Padding
      ),
    ],
  ); // Column

  Widget userline(Userpost userPost) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CircleAvatar(
          backgroundImage: AssetImage(userPost.userimg),
          radius: 20,
        ), // CircleAvatar
      ), // Container
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(userPost.username, style: nametxtStyle),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(userPost.time),
              const Text('.'),
              const Icon(Icons.group, size: 15, color: Colors.grey),
            ],
          ), // Row
        ],
      ), // Column
    ],
  ); // Row

  Widget postimage(Userpost userPost) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ✅ Caption text, fixed to wrap correctly
        Text(
          userPost.postcontent,
          style: const TextStyle(fontSize: 16),
          softWrap: true,
        ),
        const SizedBox(height: 15),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            userPost.postimg,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
        ), // IconButton
      ), // AppBar
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          userline(userPost),
          postimage(userPost),
          buttons(userPost),
          commenters(userPost),
          ...userData.commentList.map(
            (userComment) => userpostdetails(userComment),
          ),
        ],
      ), // ListView
    ); // Scaffold
  }
}
