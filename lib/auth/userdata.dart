import 'package:task_6/auth/account.dart';
import 'package:task_6/auth/friend.dart';
import 'package:task_6/auth/usercomment.dart';
import 'package:task_6/auth/userpost.dart';

class Userdata {
  List<Userpost> userList = [
    Userpost(
      userimg: 'assets/male 6.png',
      username: 'John Doe',
      time: '2 hrs ago',
      postcontent:
          '🌃 Night vibes at DGT Park — lights, laughter, and a little peace of mind. ✨',
      postimg: 'assets/9cb8d4e9-e0e8-4728-a4ee-476400b5e785.jpg',
      numcomments: '24',
      numshare: '5',
      isliked: false,
    ),

    Userpost(
      userimg: 'assets/female 4.png',
      username: 'Maria Santos',
      time: '30 mins ago',
      postcontent:
          '😄 Back to where happiness is simple — swings, slides, and laughter all around! 🎠',
      postimg: 'assets/2.png',
      numcomments: '12',
      numshare: '3',
      isliked: true,
    ),

    Userpost(
      userimg: 'assets/female 5.png',
      username: 'Alex Rivera',
      time: '5 hrs ago',
      postcontent:
          '🔥 Colors, cheers, and school pride on full display! Intramurals mode: ON! 🏅',
      postimg: 'assets/96e611dc-30fb-4409-88b9-c6cd280c5b58.jpg',
      numcomments: '46',
      numshare: '10',
      isliked: false,
    ),

    Userpost(
      userimg: 'assets/female 2.png',
      username: 'Lara Cruz',
      time: '1 day ago',
      postcontent:
          '🎶 Crowd’s roaring, dancers slaying — what a performance! 💥',
      postimg: 'assets/db905fd7-0113-4f2c-9841-1e61ef1f18f2.jpg',
      numcomments: '33',
      numshare: '7',
      isliked: true,
    ),
  ];

  List<Friend> friendList = [
    Friend(img: 'assets/female 1.png', name: 'Alice'),
    Friend(img: 'assets/male 1.png', name: 'Bob'),
    Friend(img: 'assets/female 3.png', name: 'Diana'),
    Friend(img: 'assets/male 3.png', name: 'Charlie'),
    Friend(img: 'assets/male 4.png', name: 'Ethan'),
    Friend(img: 'assets/male 5.png', name: 'Michael'),
  ];

  List<Usercomment> commentList = [
    Usercomment(
      commenterImg: 'assets/female 1.png',
      commenterName: 'Jane Smith',
      commenterTime: '6 hrs',
      commenterContent: 'Awesome!',
    ),
    Usercomment(
      commenterImg: 'assets/male 1.png',
      commenterName: 'Kenneth Vladimir',
      commenterTime: '2 hrs',
      commenterContent: 'Fantastic!',
    ),
    Usercomment(
      commenterImg: 'assets/male 2.png',
      commenterName: 'Miko Rojo',
      commenterTime: '8 hrs',
      commenterContent: 'Superb!',
    ),
  ];

  Account myUserAccount = Account(
    name: 'Rocky Adaya',
    email: 'rocky.adaya101@gmail.com',
    img: 'assets/b12ed833-c782-401d-ac73-e050732f1bc2.png',
    numFollowers: '1M',
    numPosts: '10',
    numFollowing: '150',
    numFriends: '50',
  );
}
