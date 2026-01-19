import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int slectedindex = 0; 
  int SelectedIndex = 0; 
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


  Widget buildTabButton(String title, IconData icon, int index) {
    bool isActive = SelectedIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => SelectedIndex = index),
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(34),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isActive ? Colors.white : Colors.grey,
                size: 20,
              ),
              const SizedBox(width: 5),
              Text(
                title,
                style: GoogleFonts.montserrat(
                  color: isActive ? Colors.white : Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLocationTile(int id, String img, String name, String ip) {
  
    if (SelectedIndex == 0 || favlist.contains(id)) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: GestureDetector(
          onTap: () => setState(() => slectedindex = id),
          child: mywidget(
            text: name,
            image: img,
            text2: ip,
            isselected: slectedindex == id,
            isfav: favlist.contains(id),
            onfavttap: () => tooglefav(id),
          ),
        ),
      );
    }
    return const SizedBox.shrink();
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
            const SizedBox(height: 13),

  
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
                    buildTabButton("Location", Icons.location_on, 0),
                    buildTabButton("Favorite", Icons.favorite, 1),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

    
            buildLocationTile(
              1,
              "assets/images/image1.png",
              "Singapore",
              "IP - 127.123.21.12",
            ),
            buildLocationTile(
              2,
              "assets/images/image2.png",
              "Netherlands",
              "IP - 127.123.21.12",
            ),
            buildLocationTile(
              3,
              "assets/images/image3.png",
              "US - New York",
              "IP - 127.123.21.12",
            ),
            buildLocationTile(
              4,
              "assets/images/image5.png",
              "California",
              "IP - 127.123.21.12",
            ),
            buildLocationTile(
              5,
              "assets/images/image6.png",
              "Canada Toronto",
              "IP - 127.123.21.12",
            ),
            buildLocationTile(
              6,
              "assets/images/image7.png",
              "UK - London",
              "IP - 127.123.21.12",
            ),
            buildLocationTile(
              7,
              "assets/images/image8.png",
              "Germany",
              "IP - 127.123.21.12",
            ),
            buildLocationTile(
              8,
              "assets/images/image9.png",
              "Canada",
              "IP - 127.123.21.12",
            ),
          ],
        ),
      ),
    );
  }
}


class mywidget extends StatelessWidget {
  final String text;
  final String image;
  final String text2;
  final bool isselected;
  final VoidCallback onfavttap;
  final bool isfav;

  const mywidget({
    super.key,
    required this.text,
    required this.image,
    required this.text2,
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
          border: Border.all(
            color: isselected ? Colors.blueAccent : Colors.transparent,
          ),
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
                  text2,
                  style: GoogleFonts.montserrat(
                    color: const Color(0xff7C7F90),
                    fontSize: 8,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.signal_cellular_alt,
              color: Colors.green,
              size: 20,
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: onfavttap,
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Icon(
                  isfav ? Icons.favorite : Icons.favorite_outline,
                  color: isfav ? Colors.red : const Color(0xff434363),
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
