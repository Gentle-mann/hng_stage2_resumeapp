import 'package:flutter/material.dart';
import 'package:hng_stage2_mobile/constants/texts.dart';

import '../widgets/drawer.dart';
import '../widgets/my_pic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isMobile = width < 760;
    return Scaffold(
      drawer: const DrawerWidget(),
      body: CustomScrollView(
        scrollDirection: isMobile ? Axis.vertical : Axis.horizontal,
        slivers: [
          const MyPictureWidget(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 16,
            ),
            sliver: _aboutMe(),
          ),
        ],
      ),
    );
  }

  Widget _aboutMe() {
    return SliverList(
      delegate: SliverChildListDelegate(
        const [
          Text(
            'About Me',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            aboutMeText,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 28.0),
          Text(
            'My Experience',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            experienceText,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 28.0),
          Text(
            'My Skills',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 28.0),
          Text(
            skillText,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 36.0),
          Text(
            'My Education',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            educationText,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
