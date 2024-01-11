import 'package:flutter/material.dart';
import 'package:my_portfolio/components/coding.dart';
import 'package:my_portfolio/components/my_info.dart';
import 'package:my_portfolio/components/my_skills.dart';
import 'package:my_portfolio/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(title: "Residence", text: "Norway"),
                  AreaInfoText(title: "City", text: "Oslo"),
                  AreaInfoText(title: "Age", text: "37"),
                  MySkills(),
                  SizedBox(height: defaultPadding / 2),
                  Coding(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AreaInfoText extends StatelessWidget {
  final String title;
  final String text;
  const AreaInfoText({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title, style: TextStyle(color: primaryColor)),
          Text(text, style: TextStyle(color: secondaryColor))
        ],
      ),
    );
  }
}