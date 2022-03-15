import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants/constants.dart';

class DatabaseServices {
  static Future<int> followersNum(String userId) async {
    QuerySnapshot followersSnapshot =
    await followersRef.doc(userId).collection('Followers').get();
    return followersSnapshot.docs.length;
  }

  static Future<int> followingNum(String userId) async {
    QuerySnapshot followingSnapshot =
    await followingRef.doc(userId).collection('Following').get();
    return followingSnapshot.docs.length;
  }
}