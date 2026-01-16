// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/languagescareen/languagescreen.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10172A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 50),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF327AF2),
                  borderRadius: BorderRadius.circular(13),
                ),
                width: 100,
                height: 100,
                child: Image.asset('assets/images/Vector (2).png'),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isselected = !isselected;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          width: 25.27,
                          height: 25.27,
                          child: isselected
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,

                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 18,
                                  ),

                                  width: 25.27,
                                  height: 25.27,
                                )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: 7),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'By clicking ‘Get Started’ you are agree to',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Privacy Policy & Terms and Conditions',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: GestureDetector(
                    onTap: () {
                      if (isselected) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => Languagescreen()),
                        );
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38.06),
                        color: isselected
                            ? Colors.blueAccent
                            : const Color.fromARGB(255, 45, 69, 110),
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.montserrat(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      width: double.infinity,
                      height: 52,
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
