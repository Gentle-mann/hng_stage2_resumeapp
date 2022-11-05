import 'package:flutter/material.dart';

class MyPictureWidget extends StatelessWidget {
  const MyPictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      forceElevated: true,
      expandedHeight: 300.0,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text(
          "Hi, I'm Kaleefa",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        background: Image.asset(
          'assets/images/me.jpeg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
