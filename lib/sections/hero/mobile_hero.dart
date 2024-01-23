import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';

class MobileHero extends StatelessWidget {
  final String backgroundImagePath;
  final String heroText;
  const MobileHero({
    super.key,
    required this.backgroundImagePath,
    required this.heroText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(backgroundImagePath, fit: BoxFit.fill),
        Container(color: Colors.black.withOpacity(0.35)),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding),
              Text(
                heroText,
                style: GoogleFonts.quicksand(
                    fontSize: 32, color: Colors.orangeAccent),
              ),
              const SizedBox(height: defaultPadding),
              _buildAnimatedMySpecialities()
            ],
          ),
        )
      ],
    );
  }

  Widget _buildAnimatedMySpecialities() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: defaultPadding),
        Text('Being',
            style: TextStyle(
              fontSize: 25,
              color: secondaryColor,
            )),
        const SizedBox(width: 10.0, height: defaultPadding),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 25,
            fontFamily: 'Horizon',
            color: Colors.white,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'AWESOME',
                speed: const Duration(milliseconds: 100),
              ),
              TypewriterAnimatedText(
                'OPTIMISTIC',
                speed: const Duration(milliseconds: 100),
              ),
              TypewriterAnimatedText(
                'DIFFERENT',
                speed: const Duration(milliseconds: 100),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DeveloperCodedText extends StatelessWidget {
  const DeveloperCodedText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "developer",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}