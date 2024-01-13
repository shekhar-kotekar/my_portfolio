import 'package:flutter/material.dart';
import 'package:my_portfolio/components/side_menu.dart';
import 'package:my_portfolio/constants.dart';

class MainScreen extends StatefulWidget {
  final List<Widget> projects;
  const MainScreen({super.key, required this.projects});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SideMenu(),
              const SizedBox(width: defaultPadding),
              Projects(children: widget.projects)
            ],
          ),
        ),
      ),
    );
  }
}

class Projects extends StatelessWidget {
  final List<Widget> children;
  const Projects({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: SingleChildScrollView(child: Column(children: [...children])),
    );
  }
}