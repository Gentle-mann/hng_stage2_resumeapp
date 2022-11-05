import 'package:flutter/material.dart';

class DrawerTiles {
  final String title;
  final IconData icon;
  final VoidCallback onClicked;

  DrawerTiles({
    required this.title,
    required this.icon,
    required this.onClicked,
  });
}
