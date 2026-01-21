import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Practice2 extends StatefulWidget {
  const Practice2({super.key});

  @override
  State<Practice2> createState() => _Practice2State();
}

class _Practice2State extends State<Practice2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10172A),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/map.png',
              color: const Color.fromARGB(255, 54, 75, 91),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 52),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select Language',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 73,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 36, 105, 223),
                        borderRadius: BorderRadius.circular(127),
                      ),
                      child: Center(
                        child: Text(
                          'Apply',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 21),
                languageWidget(
                  images: 'assets/images/pakistan.png',
                  text1: 'Urdu',
                ),
                SizedBox(height: 7),
                languageWidget(
                  images: 'assets/images/england.png',
                  text1: 'English',
                ),
                SizedBox(height: 7),
                languageWidget(
                  images: 'assets/images/Indonesia (1).png',
                  text1: 'Indonesian',
                ),
                SizedBox(height: 7),
                languageWidget(
                  images: 'assets/images/African (1).png',
                  text1: 'African',
                ),
                SizedBox(height: 7),
                languageWidget(
                  images: 'assets/images/Spanish (1).png',
                  text1: 'Spanish',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class languageWidget extends StatelessWidget {
  final String images;
  final String text1;
  const languageWidget({super.key, required this.images, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 57,
      decoration: BoxDecoration(
        color: Color(0xFF1D2031),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(images, height: 44),
                SizedBox(width: 10),
                Text(
                  text1,
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(12.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
