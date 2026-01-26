import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Practice5 extends StatefulWidget {
  const Practice5({super.key});

  @override
  State<Practice5> createState() => _Practice5State();
}

class _Practice5State extends State<Practice5> {
  int SelectedIndex = 0;
  int selectedindex = 0;
  List<int> favlist = [];

  void tooglefav(int id) {
    setState(() {
      if (favlist.contains(id)) {
        favlist.remove(id);
      } else {
        favlist.add(id);
      }
    });
  }

  Widget buildTabButton(int index, String title, IconData icon) {
    bool isActive = SelectedIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => SelectedIndex = index),

        child: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            color: isActive ? Colors.blueAccent : Colors.transparent,
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: isActive ? Colors.white : Colors.grey),
              SizedBox(width: 5),
              Text(
                title,
                style: GoogleFonts.montserrat(
                  color: isActive ? Colors.white : Colors.grey,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLocationTile(int id, String image, String text, String ip) {
    if (SelectedIndex == 0 || favlist.contains(id)) ;
    return mywidget(
      image: image,
      text: text,
      ip: ip,
      isselected: selectedindex == id,
      onfavttap: () => tooglefav,
      isfav: favlist.contains(id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff10172A),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 52),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xff1D2031),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                Text(
                  "Search Location",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset("assets/images/crown2.png"),
              ],
            ),
            SizedBox(height: 13),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xff1D2031),
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Row(
                  children: [
                    buildTabButton(0, "Lacation", Icons.location_on),
                    buildTabButton(1, "Favourite", Icons.favorite),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class mywidget extends StatelessWidget {
  String image;
  String text;
  String ip;
  final bool isselected;
  final VoidCallback onfavttap;
  final bool isfav;

  mywidget({
    super.key,
    required this.image,
    required this.text,
    required this.ip,
    required this.isselected,
    required this.onfavttap,
    required this.isfav,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 51,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          color: const Color(0xff1D2031),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            const SizedBox(width: 11),
            Image.asset(image, height: 27, width: 27),
            const SizedBox(width: 9),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ip,
                  style: GoogleFonts.montserrat(
                    color: const Color(0xff7C7F90),
                    fontSize: 8,
                  ),
                ),
              ],
            ),
            Spacer(),
            const Icon(
              Icons.signal_cellular_alt,
              color: Colors.green,
              size: 20,
            ),
            const SizedBox(width: 16),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(
                Icons.favorite_outline,
                color: const Color(0xff434363),
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
