import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget(
      {Key? key, required this.mobile, required this.notMobile})
      : super(key: key);
  final Widget mobile;
  final Widget notMobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 760) {
        return mobile;
      } else {
        return notMobile;
      }
    });
  }
}
