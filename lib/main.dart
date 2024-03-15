

import 'package:flutter/material.dart';
import 'package:hostonwer/dasbord.dart';
import 'package:hostonwer/login.dart';
import 'package:hostonwer/signup.dart';
import 'package:hostonwer/home.dart';
import 'package:hostonwer/slider/sliderPage.dart';
import 'package:hostonwer/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context) => Splash(),
      "/signup":(context) => SignupPage(),
      '/login':(context) => Login(),
      '/slider' : (context) => SliderScreen(),
      '/dasb':(context) => Dasboard(),
      // '/register':(context) => Register()
    },
  ));
}