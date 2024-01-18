import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: GoogleFonts.quicksand(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: demoProjects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: 1.3,
          ),
          itemBuilder: (context, index) => ProjectCard(
            project: demoProjects[index],
          ),
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 2),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.quicksand(fontSize: 22, color: Colors.white),
          ),
          const Spacer(),
          Text(
            project.description,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            style: GoogleFonts.acme(fontSize: 16),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              print("read more clicked");
            },
            child: Text(
              "Read More >>",
              style: GoogleFonts.aclonica(fontSize: 16, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}