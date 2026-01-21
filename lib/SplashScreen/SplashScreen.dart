import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/getstared/getstarted.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Getstarted()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10172A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF327AF2),
                borderRadius: BorderRadius.circular(13),
              ),
              width: 100,
              height: 100,
              child: Image.asset('assets/images/Vector (2).png'),
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'W',
                style: GoogleFonts.museoModerno(
                  color: const Color.fromARGB(255, 0, 68, 186),
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'ing-VPN',
                style: GoogleFonts.museoModerno(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     color: const Color.fromARGB(255, 51, 75, 117),
          //     borderRadius: BorderRadius.circular(38.06),
          //   ),
          //   width: 101,
          //   height: 6,
          // ),
        ],
      ),
    );
  }
}
