import 'package:flutter/material.dart';
import 'package:vpn/SplashScreen/SplashScreen.dart';
import 'package:vpn/getstared/getstarted.dart';

import 'package:vpn/languagescareen/languagescreen.dart';

import 'package:vpn/premium/premium.dart';

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
      home: Splashscreen(),
    );
  }
}
