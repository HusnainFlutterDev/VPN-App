import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/pratice/practice1.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Practice1()),
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
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFF236DDF),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Image.asset('assets/images/vector2.png'),
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'W',
                style: GoogleFonts.museoModerno(
                  color: Color(0xFF236DDF),
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'ing - VPN',
                style: GoogleFonts.museoModerno(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
