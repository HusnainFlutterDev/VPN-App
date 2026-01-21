import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/setting/setting.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10172A),
      body: Column(
        children: [
          SizedBox(height: 54),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Setting()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1D2031),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 36,
                    height: 36,
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
                SizedBox(width: 80),
                Text(
                  'About us',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 35),
          Container(
            width: 79,
            height: 79,
            decoration: BoxDecoration(
              color: Color(0xFF236DDF),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Image.asset('assets/images/vector2.png', height: 37),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'S',
                style: GoogleFonts.museoModerno(
                  color: Color(0xFF236DDF),
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'uper',
                style: GoogleFonts.museoModerno(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 6),
              Text(
                'F',
                style: GoogleFonts.museoModerno(
                  color: Color(0xFF236DDF),
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'ast',
                style: GoogleFonts.museoModerno(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 6),
              Text(
                'V',
                style: GoogleFonts.museoModerno(
                  color: Color(0xFF236DDF),
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'PN',
                style: GoogleFonts.museoModerno(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          Text(
            'Version 1.0.0',
            style: GoogleFonts.museoModerno(
              color: Color(0xFF8E8E8E),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                color: Color(0xFF1D2031),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Color(0xFF3D83FF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.update_rounded, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Check for Updates',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF434363),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
