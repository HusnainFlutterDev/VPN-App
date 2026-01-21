import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/home/home.dart';

class Premium extends StatefulWidget {
  const Premium({super.key});

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  int selectedindex = -1;
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff10172A),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      color: Color(0xff1D2031),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Home()),
                          );
                        }
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/crown.png",
                width: 80,
                height: 80,
              ),
            ),
            Text(
              "Get Premium",
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Upgrade to Premium to enjoy\nmore features",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Color(0xffAEB1C2),
                fontSize: 12,

                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.public_outlined, color: Colors.white),
                    SizedBox(width: 12),
                    Text(
                      "All Global Services",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 30),
                    Icon(Icons.flash_on_outlined, color: Colors.white),
                    SizedBox(width: 12),
                    Text(
                      "Super fast Connections",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.dns_outlined, color: Colors.white),
                    SizedBox(width: 12),
                    Text(
                      "All 10+ Server for VIP",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.campaign_outlined, color: Colors.white),
                    SizedBox(width: 12),
                    Text(
                      "ADS Free Services",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "First 3 Day",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " Free Trial",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff236DDF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "No commitment & Cancel Anytime",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff8A8C99),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17),
                GestureDetector(
                  onTap: () => setState(() => selectedindex = 0),

                  child: premiumwidget(
                    text: "\$59.00/- Week",
                    isselected: selectedindex == 0,
                  ),
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () => setState(() => selectedindex = 1),

                  child: premiumwidget(
                    text: "\$79.00/- Month",
                    isselected: selectedindex == 1,
                  ),
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () => setState(() => selectedindex = 2),

                  child: extrawidget(
                    text: "\$89.00/- Lifetime Free",
                    text2: "-69%",
                    isselected: selectedindex == 2,
                  ),
                ),

                SizedBox(height: 23),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: AlignmentGeometry.centerRight,
                        end: AlignmentGeometry.centerLeft,

                        colors: [Colors.blueAccent, Colors.deepPurple],
                      ),

                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Text(
                        "Upgrade to Premium",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Terms of Conditions",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff236DDF),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff236DDF),
                      ),
                    ),
                    Text(
                      "Privacy Policy",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff236DDF),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff236DDF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class extrawidget extends StatelessWidget {
  String text;
  String text2;
  bool isselected;
  extrawidget({
    super.key,
    required this.text,
    required this.text2,
    required this.isselected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: isselected ? Colors.blueAccent : Colors.transparent,
              ),
              color: Color(0xff1D2031),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isselected
                            ? Colors.blueAccent
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: -20,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 44, 124, 85),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                child: Text(
                  text2,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class premiumwidget extends StatelessWidget {
  String text;
  bool isselected;
  premiumwidget({super.key, required this.text, required this.isselected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: isselected ? Colors.blueAccent : Colors.transparent,
          ),
          color: Color(0xff1D2031),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: isselected ? Colors.blueAccent : Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: isselected
                    ? Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(17),
                        ),
                      )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
