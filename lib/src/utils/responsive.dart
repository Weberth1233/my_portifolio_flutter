import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget? tablet;

  const Responsive(
      {required this.mobile, required this.desktop, this.tablet, super.key});

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  static EdgeInsets getPadding(BuildContext context) {
    return EdgeInsets.symmetric(
        horizontal: isDesktop(context)
            ? 319.17
            : isMobile(context)
                ? 10
                : 50);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return desktop;
      } else if (constraints.maxWidth >= 800) {
        Widget? resTablet = tablet;
        if (resTablet != null) {
          return resTablet;
        }
        return mobile;
      } else {
        return mobile;
      }
    });
  }
}