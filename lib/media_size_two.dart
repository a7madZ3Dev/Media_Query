import 'package:flutter/material.dart';

import './extensions.dart';

/// This size work fine on my design, maybe you need some customization depends on your design
class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    required this.mobile,
    this.mobileLarge,
    this.tablet,
    required this.desktop,
    Key? key,
  }) : super(key: key);

  // This isMobile, isMobileLarge, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) => context.width <= 500;

  static bool isMobileLarge(BuildContext context) => context.width <= 700;

  static bool isTablet(BuildContext context) => context.width < 1024;

  static bool isDesktop(BuildContext context) => context.width >= 1024;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1024 then we consider it a desktop
      builder: (context, constraints) {
        double _width = constraints.maxWidth;
        if (_width >= 1024) {
          return desktop;
        }
        // If width it less then 1024 and more then 700 we consider it as tablet
        else if (_width > 700 && tablet != null) {
          return tablet!;
        }
        // If width it less then 700 and more then 500 we consider it as mobileLarge
        else if (_width > 500 && mobileLarge != null) {
          return mobileLarge!;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}
