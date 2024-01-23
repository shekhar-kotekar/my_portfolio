import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/sections/hero/desktop_hero.dart';
import 'package:my_portfolio/sections/hero/mobile_hero.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    String backgroundImage = "assets/images/bg-1.jpg";
    String heroText = "Discover my amazing projects here!";
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (Responsive.isMobile(context)) {
          return MobileHero(
            backgroundImagePath: backgroundImage,
            heroText: heroText,
          );
        } else {
          return DesktopHero(
            backgroundImage: backgroundImage,
            heroText: heroText,
          );
        }
      }),
    );
  }
}