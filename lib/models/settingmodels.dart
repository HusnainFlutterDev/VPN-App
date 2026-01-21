import 'package:flutter/material.dart';

class SettingItem {
  final IconData startIcon;
  final String title;
  final IconData endIcon;
  final Widget screen;

  SettingItem({
    required this.startIcon,
    required this.title,
    required this.endIcon,
    required this.screen,
  });
}
