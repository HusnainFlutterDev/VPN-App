import 'package:flutter/material.dart';
import 'package:vpn/Search%20language/Search%20language.dart';
import 'package:vpn/SplashScreen/SplashScreen.dart';
import 'package:vpn/aboutus/aboutus.dart';
import 'package:vpn/connectingreport/connectingreport.dart';
import 'package:vpn/getstared/getstarted.dart';
import 'package:vpn/home/home.dart';
import 'package:vpn/languagescareen/languagescreen.dart';
import 'package:vpn/setting/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Home(),
    );
  }
}
