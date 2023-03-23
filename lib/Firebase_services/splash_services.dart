import 'dart:async';
import 'package:fitness_freak/session_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_freak/Main_page_5.dart';
import 'package:fitness_freak/src/Registeration/introduction1.dart';
import 'package:fitness_freak/src/Registeration/login_4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if (user != null) {
      SessionController().userId = user.uid.toString();
      Timer(
          const Duration(seconds: 3),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Mymainpage())));
    } else {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home())));
    }
  }
}
