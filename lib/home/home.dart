import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isselected = false;
  Timer? _timer;
  Duration duration = Duration.zero;

  void toogleconnetion() {
    setState(() {
      if (isselected) {
        isselected = false;
        _timer?.cancel();
        duration = Duration.zero;
      } else {
        isselected = true;
        _timer = Timer.periodic(Duration(seconds: 1), (timer) {
          duration = duration + Duration(seconds: 1);
          setState(() {});
        });
      }
    });
  }

  String formatTime(int totalSeconds) {
    int h = totalSeconds ~/ 3600;
    int m = (totalSeconds % 3600) ~/ 60;
    int s = totalSeconds % 60;
    return "${h.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/background1.jpg',
              fit: BoxFit.cover,
            ),
          ),

          Column(
            children: [
              SizedBox(height: 46),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 55, 55, 55),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        weight: 10,
                      ),
                    ),
                    Image.asset('assets/images/crown.png', height: 56),
                  ],
                ),
              ),
              Text(
                'welcome',
                style: GoogleFonts.montserrat(
                  color: Color(0xFF7C7F90),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'W',
                    style: GoogleFonts.museoModerno(
                      color: Colors.blueAccent,
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
              SizedBox(height: 20),
              Container(
                width: 325,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFF1D2031),
                  borderRadius: BorderRadius.circular(114),
                  border: Border.all(
                    color: isselected ? Colors.greenAccent : Colors.blueAccent,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset('assets/images/england.png'),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'United States',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'IP - 127.123.21.12',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFF7C7F90),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 93),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: toogleconnetion,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF10172A),
                    border: Border.all(
                      color: isselected
                          ? Colors.greenAccent
                          : Color(0xFF236DDF),
                      width: 5,
                    ),
                    boxShadow: isselected
                        ? [
                            BoxShadow(
                              color: Colors.greenAccent.withOpacity(0.3),
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ]
                        : null,
                    borderRadius: BorderRadius.circular(70),
                  ),
                  width: 139,
                  height: 139,
                  child: Column(
                    children: [
                      SizedBox(height: 26),
                      Icon(
                        Icons.power_settings_new,
                        color: isselected ? Colors.greenAccent : Colors.white,
                        weight: 10,
                        size: 55,
                      ),
                      Text(
                        isselected ? ' CONNECT' : "Tap Connect",
                        style: GoogleFonts.montserrat(
                          color: isselected
                              ? Colors.white
                              : Color.fromARGB(255, 100, 100, 100),
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Status : ',
                    style: GoogleFonts.montserrat(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    isselected ? ' Connected' : "Not Connected",
                    style: GoogleFonts.montserrat(
                      color: isselected
                          ? Colors.greenAccent
                          : Color(0xFFFF0000),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                formatTime(duration.inSeconds),
                style: GoogleFonts.montserrat(
                  color: Color(0xFFFFFFFF),
                  fontSize: 35,
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
