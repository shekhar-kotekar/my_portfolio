// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_portfolio/constants.dart';
// import 'package:my_portfolio/responsive.dart';
//
// class HomeBanner extends StatelessWidget {
//   const HomeBanner({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 3,
//       child: Stack(fit: StackFit.expand, children: [
//         Image.asset("assets/images/bg-1.jpg", fit: BoxFit.fill),
//         Container(color: Colors.black.withOpacity(0.25)),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Discover my amazing\nprojects here!",
//                 style: Responsive.isDesktop(context)
//                     ? GoogleFonts.quicksand(
//                         fontSize: 52,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.orangeAccent,
//                       )
//                     : GoogleFonts.quicksand(
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.orangeAccent),
//               ),
//               const SizedBox(height: defaultPadding),
//               //const MyBuildAnimatedText(),
//               const SizedBox(width: defaultPadding, height: defaultPadding),
//               ElevatedButton(
//                 onPressed: () {
//                   print("explore now button clicked");
//                 },
//                 style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     backgroundColor: primaryColor),
//                 child: Text(
//                   "EXPLORE NOW",
//                   style: GoogleFonts.archivo(fontSize: 20, color: Colors.white),
//                 ),
//               )
//             ],
//           ),
//         )
//       ]),
//     );
//   }
// }