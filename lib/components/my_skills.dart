import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';

class MySkills extends StatelessWidget {
  const MySkills({
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
            "Tools & Technologies",
            style: GoogleFonts.quicksand(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Row(
          children: [
            Expanded(child: MySkill(skillName: "Flutter", percentage: 0.9)),
            SizedBox(width: defaultPadding),
            Expanded(child: MySkill(skillName: "Spark", percentage: 0.9)),
            SizedBox(width: defaultPadding),
            Expanded(child: MySkill(skillName: "AWS", percentage: 0.9)),
          ],
        ),
      ],
    );
  }
}

class MySkill extends StatelessWidget {
  final double percentage;
  final String skillName;

  const MySkill({
    super.key,
    required this.skillName,
    this.percentage = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(value: value, color: Colors.orange),
                Center(
                  child: Text(
                    "${(value * 100).toInt()}%",
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                      color: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(
          skillName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.quicksand(
            fontSize: 16,
            color: primaryColor,
          ),
        )
      ],
    );
  }
}