// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/practice/practice2.dart';

class Practice3 extends StatefulWidget {
  const Practice3({super.key});

  @override
  State<Practice3> createState() => _Practice3State();
}

class _Practice3State extends State<Practice3> {
  bool isSelected = false;
  int SelectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff10172A),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/map.png',
              fit: BoxFit.cover,
              color: const Color.fromARGB(255, 43, 52, 69),
            ),
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
                      'Select Language',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          SelectedIndex != -1;
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, seconadaryAnimation) =>
                                      const Practice4(),
                              transitionsBuilder:
                                  (
                                    context,
                                    animation,
                                    secondaryAnimation,
                                    child,
                                  ) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                              transitionDuration: Duration(milliseconds: 100),
                            ),
                          );
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: SelectedIndex != -1
                              ? Colors.blueAccent
                              : Colors.blueGrey,
                          borderRadius: BorderRadius.circular(26),
                        ),
                        width: 73.73,
                        height: 30.51,
                        child: Center(
                          child: Text(
                            'Apply',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
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

              SizedBox(height: 22),
              GestureDetector(
                onTap: () => setState(() => SelectedIndex = 0),

                child: mywidget(
                  image: 'assets/images/flag pakistan.png',
                  text1: 'Urdu',
                  isSelected: SelectedIndex == 0,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => setState(() => SelectedIndex = 1),
                child: mywidget(
                  image: 'assets/images/English (1).png',
                  text1: 'English',
                  isSelected: SelectedIndex == 1,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => setState(() => SelectedIndex = 2),
                child: mywidget(
                  image: 'assets/images/Indonesia (1).png',
                  text1: 'Indonesian',
                  isSelected: SelectedIndex == 2,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => setState(() => SelectedIndex = 3),
                child: mywidget(
                  image: 'assets/images/African (1).png',
                  text1: 'African',
                  isSelected: SelectedIndex == 3,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => setState(() => SelectedIndex = 4),
                child: mywidget(
                  image: 'assets/images/Spanish (1).png',
                  text1: 'Spanish',
                  isSelected: SelectedIndex == 4,
                ),
              ),

              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}

class mywidget extends StatelessWidget {
  final String image;
  final String text1;
  final bool isSelected;
  const mywidget({
    super.key,
    required this.image,
    required this.text1,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Container(
        width: double.infinity,
        height: 57,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: isSelected ? Colors.blueAccent : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(14),
          color: Color(0xFF1D2031),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
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
                height: 25,
                width: 25,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? Colors.blueAccent : Color(0xFF8E8E8E),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blueAccent : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
