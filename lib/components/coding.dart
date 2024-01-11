import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Programming Languages",
            style: GoogleFonts.quicksand(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const AnimatedLanguage(languageName: "Python", percentage: 0.8),
        const AnimatedLanguage(languageName: "Scala", percentage: 0.7),
        const AnimatedLanguage(languageName: "Java", percentage: 0.5),
        const AnimatedLanguage(
          languageName: "Rust",
          percentage: 0.2,
          animationDuration: 3,
        )
      ],
    );
  }
}

class AnimatedLanguage extends StatelessWidget {
  final double percentage;
  final String languageName;
  final int animationDuration;
  const AnimatedLanguage({
    super.key,
    required this.languageName,
    this.percentage = 1.0,
    this.animationDuration = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration * animationDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(languageName, style: GoogleFonts.quicksand(fontSize: 18)),
                Text("${(value * 100).toInt()}%")
              ],
            ),
            const SizedBox(height: defaultPadding / 6),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}