import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Searchlanguage extends StatefulWidget {
  const Searchlanguage({super.key});

  @override
  State<Searchlanguage> createState() => _SearchlanguageState();
}

class _SearchlanguageState extends State<Searchlanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10172A),
      body: Column(
        children: [
          SizedBox(height: 52),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF1D2031),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 36,
                  height: 36,
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
                Text(
                  'Search Location',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Image.asset('assets/images/crown.png', height: 60),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Icon(Icons.location_on, color: Colors.white),
                Text(
                  'Location',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 11.64,
                  ),
                ),
              ],
            ),

            decoration: BoxDecoration(
              color: Color(0xFF1D2031),
              borderRadius: BorderRadius.circular(20),
            ),
            width: 345,
            height: 39,
          ),
        ],
      ),
    );
  }
}
