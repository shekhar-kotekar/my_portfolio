import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';

class DesktopHero extends StatelessWidget {
  final String backgroundImage;
  final String heroText;
  const DesktopHero(
      {super.key, required this.backgroundImage, required this.heroText});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(backgroundImage, fit: BoxFit.fill),
        Container(color: Colors.black.withOpacity(0.25)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                heroText,
                style: GoogleFonts.actor(
                  fontSize: 42,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: defaultPadding),
              const MyBuildAnimatedText(),
              const SizedBox(width: defaultPadding, height: defaultPadding),
              ElevatedButton(
                onPressed: () {
                  print("explore now button clicked");
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.orangeAccent),
                child: Text(
                  "EXPLORE NOW",
                  style: GoogleFonts.archivo(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.quicksand(fontSize: 24, color: Colors.white),
      child: Row(
        children: [
          const FlutterCodedText(),
          const SizedBox(width: defaultPadding / 2),
          const Text("I build "),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(
              "Beautiful, responsive web and mobile apps",
              speed: const Duration(milliseconds: 60),
            ),
            TyperAnimatedText(
              "Data analytics baked in",
              speed: const Duration(milliseconds: 60),
            ),
            TyperAnimatedText(
              "Along with Data Engineering pipelines",
              speed: const Duration(milliseconds: 60),
            ),
          ]),
          const SizedBox(width: defaultPadding / 2),
          const FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}