import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Drawer(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.23,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Spacer(flex: 2),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("images/me.jpg"),
                      ),
                      const Spacer(),
                      Text(
                        "Chandrashekhar Kotekar",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Text(
                        "Father, Data Engineer and Flutter Developer",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontWeight: FontWeight.w200, height: 1.5),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}