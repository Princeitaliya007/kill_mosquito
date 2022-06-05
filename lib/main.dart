import 'package:flutter/material.dart';
import 'package:killmosquito/pages/firstpage1.dart';
import 'package:killmosquito/pages/levels/firstlevel.dart';
import 'package:killmosquito/pages/levels/secondlevel.dart';
import 'package:killmosquito/pages/losepage.dart';
import 'package:killmosquito/pages/splashpage/splashpage.dart';
import 'package:killmosquito/pages/winpage.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        "/" : (context) => const SplashPage(),
        "firstpage1" : (context) => const FirstPage1(),
        "firstlevel" : (context) => const FirstLevel(),
        "secondlevel" : (context) => const SecondLevel(),
        "winpage" : (context) => const WinPage(),
        "losepage" : (context) => const LosePage(),
      },
    ),
  );
}
