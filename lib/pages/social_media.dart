import 'package:flutter/material.dart';
import 'package:hng_stage2_mobile/constants/social_media_buttons.dart';
import 'package:hng_stage2_mobile/models/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 760;
    final crossAxisCount = isMobile ? 2 : 4;
    final mediaItems = mediaButtons();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media Links'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...mediaItems.map(
                (mediaButton) => _buildMediaItems(mediaButton),
              ),
            ],
          )),
        ),
      ),
    );
  }

  _buildMediaItems(SocialMediaButton mediaButton) {
    return GestureDetector(
      onTap: () {
        _launchUrl(mediaButton.url);
      },
      child: Column(
        children: [
          Image.asset(
            mediaButton.image,
          ),
          const SizedBox(height: 12.0),
          Text(
            mediaButton.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
            ),
          ),
          const SizedBox(height: 24.0),
        ],
      ),
    );
  }

  Future<void> _launchUrl(url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not Launch';
    }
  }
}
