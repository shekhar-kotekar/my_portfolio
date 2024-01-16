import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  final String name;
  final String aboutMe;
  final String myImage;
  const MyInfo({
    super.key,
    required this.name,
    required this.aboutMe,
    required this.myImage,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 2),
            CircleAvatar(radius: 50, backgroundImage: AssetImage(myImage)),
            const Spacer(),
            Text(name, style: Theme.of(context).textTheme.titleMedium),
            Text(
              aboutMe,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}