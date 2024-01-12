import 'package:flutter/material.dart';
import 'package:my_portfolio/components/side_menu.dart';
import 'package:my_portfolio/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

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
          child: const Row(children: [SideMenu(), Projects()]),
        ),
      ),
    );
  }
}

class Projects extends StatelessWidget {
  const Projects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 7, child: Container(color: Colors.blue));
  }
}