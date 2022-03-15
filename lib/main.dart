import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:profile_full/models/user_model.dart';
import 'package:profile_full/screens/feed_screen.dart';
import 'package:profile_full/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late final UserModel user;
  Widget getScreenId() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        //stream: FirebaseFirestore.instance.collection('users').doc(uid),
        //stream: FirebaseFirestore.instance.collection('user').doc().collection('userInfo').doc().snapshots(),
        builder: (BuildContext context, snapshot) {
          Map<String, dynamic> user_data =snapshot.data.data();
          print('StreamBuilder dew: ${snapshot.connectionState}');
          final Object? user = snapshot.data;
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            print("ttttttt");
            //String email = 'test';
            print(snapshot.data);
            print(snapshot.data );
            //return FeedScreen(currentUserId: snapshot.data.uid);
            return FeedScreen();
          } else {
            return WelcomeScreen();
          }
          // if (!snapshot.hasData) {
          //   return WelcomeScreen();
          // }
          // List<UserModel> searchResults = [];
          // snapshot.docs.forEach((doc) {    //have error here
          //   User user = User.fromDocument(doc);
          //   UserResult searchResult = UserResult(user);
          //   searchResults.add(searchResult);
          // });
          // return ListView(
          //   children: searchResults,
          // );
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: getScreenId(),
    );
  }
}
