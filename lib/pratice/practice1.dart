import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/languagescareen/languagescreen.dart';
import 'package:vpn/pratice/practice2.dart';

class Practice1 extends StatefulWidget {
  const Practice1({super.key});

  @override
  State<Practice1> createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {
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
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF236DDF),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Image.asset('assets/images/vector2.png'),
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isselected = !isselected;
                        });
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: isselected
                              ? Colors.blueAccent
                              : Colors.transparent,
                          border: Border.all(
                            color: isselected
                                ? Colors.blueAccent
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.check,
                          color: isselected ? Colors.white : Colors.transparent,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'By clicking ‘Get Started’ you are agree to',
                          style: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'Privacy Policy & Terms and Conditions',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  if (isselected)
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Practice2()),
                    );
                },
                child: Container(
                  width: 311,
                  height: 52,
                  decoration: BoxDecoration(
                    color: isselected
                        ? Colors.blueAccent
                        : const Color.fromARGB(255, 36, 52, 79),
                    borderRadius: BorderRadius.circular(38),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
