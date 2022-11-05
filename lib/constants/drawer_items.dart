import 'package:flutter/material.dart';
import 'package:hng_stage2_mobile/models/my_info.dart';
import 'package:hng_stage2_mobile/pages/contact_info.dart';
import 'package:hng_stage2_mobile/pages/social_media.dart';

drawerTiles(BuildContext context) {
  final List<DrawerTiles> drawerItems = [
    DrawerTiles(
      title: 'Contact Info',
      icon: Icons.contact_page,
      onClicked: () {
        Navigator.pop(context);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const ContactInfoPage();
            },
          ),
        );
      },
    ),
    DrawerTiles(
      title: 'Social Media',
      icon: Icons.link,
      onClicked: () {
        Navigator.pop(context);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const SocialMediaPage();
            },
          ),
        );
      },
    )
  ];
  return drawerItems;
}
