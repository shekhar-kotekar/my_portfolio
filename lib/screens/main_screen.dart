import 'package:flutter/material.dart';
import 'package:my_portfolio/components/side_menu.dart';
import 'package:my_portfolio/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: const Row(
            children: [
              SideMenu(),
              ProjectsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 7,
        child: Container(
          color: Colors.blue,
        ));
  }
}