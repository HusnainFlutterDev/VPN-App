// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/getstared/getstarted.dart';
import 'package:vpn/home/connecting1.dart';
import 'package:vpn/home/home.dart';

class Languagescreen extends StatefulWidget {
  const Languagescreen({super.key});

  @override
  State<Languagescreen> createState() => _LanguagescreenState();
}

class _LanguagescreenState extends State<Languagescreen> {
  int slectedindex = -1;
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff10172A),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/images/map.png', fit: BoxFit.cover),
          ),
          Column(
            children: [
              SizedBox(height: 52),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'select Language',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (slectedindex != -1)
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Home()),
                          );
                      },

                      child: Container(
                        decoration: BoxDecoration(
                          color: slectedindex != -1
                              ? Color(0xFF3D83FF)
                              : Colors.blueGrey,
                          borderRadius: BorderRadius.circular(26),
                        ),
                        width: 73.73,
                        height: 30.51,
                        child: Center(
                          child: Text(
                            'Apply',
                            style: GoogleFonts.montserrat(
                              color: slectedindex != -1
                                  ? Colors.white
                                  : Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21),
              GestureDetector(
                onTap: () => setState(() => slectedindex = 0),

                child: languageWidget(
                  image: 'assets/images/flag2.webp',
                  text1: 'Urdu',
                  isselected: slectedindex == 0,
                ),
              ),
              SizedBox(height: 7),
              GestureDetector(
                onTap: () => setState(() => slectedindex = 1),

                child: languageWidget(
                  image: 'assets/images/English (1).png',
                  text1: 'English',
                  isselected: slectedindex == 1,
                ),
              ),
              SizedBox(height: 7),
              GestureDetector(
                onTap: () => setState(() => slectedindex = 2),

                child: languageWidget(
                  image: 'assets/images/Indonesia (1).png',
                  text1: 'Indonesian',
                  isselected: slectedindex == 2,
                ),
              ),
              SizedBox(height: 7),
              GestureDetector(
                onTap: () => setState(() => slectedindex = 3),

                child: languageWidget(
                  image: 'assets/images/African (1).png',
                  text1: 'African',
                  isselected: slectedindex == 3,
                ),
              ),
              SizedBox(height: 7),
              GestureDetector(
                onTap: () => setState(() => slectedindex = 4),

                child: languageWidget(
                  image: 'assets/images/Spanish (1).png',
                  text1: 'Spanish',
                  isselected: slectedindex == 4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class languageWidget extends StatelessWidget {
  final String image;
  final String text1;
  bool isselected;
  languageWidget({
    super.key,
    required this.image,
    required this.text1,
    required this.isselected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Color(0xFF1D2031),
          border: isselected == false
              ? null
              : Border.all(
                  width: 1,
                  color: isselected ? Colors.blueAccent : Color(0xFF1D2031),
                ),
        ),
        width: double.infinity,
        height: 57,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image)),
                    ),
                  ),
                  SizedBox(width: 14),
                  Text(
                    text1,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isselected ? Colors.blueAccent : Color(0xFF8E8E8E),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12.5),
                ),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isselected ? Colors.blueAccent : Colors.transparent,
                  ),
                ),
                width: 25.42,
                height: 25.42,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
