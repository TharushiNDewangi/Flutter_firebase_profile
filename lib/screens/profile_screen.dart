import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../models/user_model.dart';
import '../services/database_service.dart';

class ProfileScreen extends StatefulWidget {
  final String? currentUserId;
  final String? visitedUserId;
  const ProfileScreen(
      {Key? key
        , this.currentUserId, this.visitedUserId
      })
      : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _followersCount = 0;
  int _followingCount = 0;

  // getFollowersCount() async {
  //   int followersCount =
  //       await DatabaseServices.followersNum(widget.visitedUserId);
  //   if (mounted) {
  //     setState(() {
  //       _followersCount = followersCount;
  //     });
  //   }
  // }
  //
  // getFollowingCount() async {
  //   int followingCount =
  //       await DatabaseServices.followingNum(widget.visitedUserId);
  //   if (mounted) {
  //     setState(() {
  //       _followingCount = followingCount;
  //     });
  //   }
  // }
  // User? user = FirebaseAuth.instance.currentUser;
  // UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    //getFollowersCount();
    //getFollowingCount();
    // super.initState();
    // FirebaseFirestore.instance
    //     .collection("users")
    //     .doc(user!.uid)
    //     .get()
    //     .then((value) {
    //   this.loggedInUser = UserModel.fromDoc(v);
    //   setState(() {});
    // });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [


        ],

      ),
      // body: FutureBuilder(
      //     future: usersRef.doc(widget.visitedUserId).get(),
      //     builder: (BuildContext context, AsyncSnapshot snapshot) {
      //       if (!snapshot.hasData) {
      //         return Center(
      //           child: CircularProgressIndicator(
      //             valueColor: AlwaysStoppedAnimation(KTweeterColor),
      //           ),
      //         );
      //       }
      //       UserModel userModel = UserModel.fromDoc(snapshot.data);
      //       return ListView(
      //           physics: const BouncingScrollPhysics(
      //               parent: AlwaysScrollableScrollPhysics()),
      //           children: [
      //             Container(
      //               height: 150,
      //               decoration: BoxDecoration(
      //                 color: KTweeterColor,
      //                 image: userModel.coverImage.isEmpty
      //                     ? null
      //                     : DecorationImage(
      //                         fit: BoxFit.cover,
      //                         image: NetworkImage(userModel.coverImage),
      //                       ),
      //               ),
      //             )
      //           ]);
      //     }),
    );
  }
}
