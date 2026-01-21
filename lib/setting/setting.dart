import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/models/settingmodels.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<SettingItem> data = [
    SettingItem(
      startIcon: Icons.storage,
      title: "Server list",
      endIcon: Icons.arrow_forward_ios,
    ),

    SettingItem(
      startIcon: Icons.translate,
      title: "App language options",
      endIcon: Icons.arrow_forward_ios,
    ),
    SettingItem(
      startIcon: Icons.send,
      title: "Recommend this app",
      endIcon: Icons.arrow_forward_ios,
    ),
    SettingItem(
      startIcon: Icons.chat_bubble_outline,
      title: "Feedback or Suggestion?",
      endIcon: Icons.arrow_forward_ios,
    ),
    SettingItem(
      startIcon: Icons.privacy_tip_outlined,
      title: "Privacy Policy",
      endIcon: Icons.arrow_forward_ios,
    ),
    SettingItem(
      startIcon: Icons.info_outline,
      title: "About us",
      endIcon: Icons.arrow_forward_ios,
    ),
  ];

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
                Center(
                  child: Text(
                    'Setting',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset('assets/images/crownimage.png'),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Color(0xFF1D2031),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
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
                                child: Icon(
                                  data[index].startIcon,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 13),
                              Expanded(
                                child: Text(
                                  data[index].title,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Icon(
                                data[index].endIcon,
                                color: Color(0xFF434363),
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
