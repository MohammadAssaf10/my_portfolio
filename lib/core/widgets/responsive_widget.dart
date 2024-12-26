import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveWidget({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= 875;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 875;

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return mobile;
    } else if (isTablet(context) && tablet != null) {
      return tablet!;
    } else {
      return desktop;
    }
  }
}
