import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAuthService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> isAdminLogin({
    required String username,
    required String password,
  }) async {
    try {
      final adminDoc =
          await _firestore.collection('admin-account').doc('username').get();

      if (adminDoc.exists) {
        final adminData = adminDoc.data() as Map<String, dynamic>;
        log(adminData.toString());
        final correctPassword = adminData['password'] as String;
        return password == correctPassword;
      } else {
        log('Admin User Not Found');
        return false;
      }
    } catch (e) {
      log('Error in admin login: $e');
      return false;
    }
  }

  Future<bool> isUserLogin({
    required String username,
    required String password,
  }) async {
    try {
      final userDoc =
          await _firestore.collection('user-account').doc('username').get();

      if (userDoc.exists) {
        final userData = userDoc.data() as Map<String, dynamic>;
        log(userData.toString());
        final correctPassword = userData['password'] as String;
        return password == correctPassword;
      } else {
        log('User Not Found');
        return false;
      }
    } catch (e) {
      log('Error in user login: $e');
      return false;
    }
  }
}
