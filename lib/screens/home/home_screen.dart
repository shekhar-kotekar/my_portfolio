import 'package:flutter/material.dart';
import 'package:my_portfolio/components/my_projects.dart';
import 'package:my_portfolio/screens/home/home_banner.dart';
import 'package:my_portfolio/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(projects: [HomeBanner(), MyProjects()]);
  }
}