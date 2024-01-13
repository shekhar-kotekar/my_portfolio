import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset("assets/images/bg_ind.jpg", fit: BoxFit.cover),
        Container(color: Colors.black.withOpacity(0.25)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Discover my amazing\nprojects here!",
                style: GoogleFonts.quicksand(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const MyBuildAnimatedText(),
              const SizedBox(
                width: defaultPadding / 2,
                height: defaultPadding / 2,
              ),
              ElevatedButton(
                onPressed: () {
                  print("explore now button clicked");
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: primaryColor),
                child: Text(
                  "EXPLORE NOW",
                  style: GoogleFonts.archivo(
                    fontSize: 20,
                    color: Colors.white,
                  ),
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
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.quicksand(
        fontSize: 24,
        color: Colors.white,
      ),
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
  const FlutterCodedText({
    super.key,
  });

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