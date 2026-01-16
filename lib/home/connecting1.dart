import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Connecting1 extends StatefulWidget {
  const Connecting1({super.key});

  @override
  State<Connecting1> createState() => _Connecting1State();
}

class _Connecting1State extends State<Connecting1> {
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
                'Welcome',
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
                  border: Border.all(color: Colors.blueAccent),
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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF236DDF), width: 5),
                  borderRadius: BorderRadius.circular(70),
                ),
                width: 139,
                height: 139,
                child: Icon(Icons.more_vert, color: Colors.white),
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
                    'Connecting',
                    style: GoogleFonts.montserrat(
                      color: Colors.yellow,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                '00:00:00',
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
