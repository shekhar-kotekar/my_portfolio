import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    Firebase.initializeApp();
    FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  } catch (e) {
    print("failed to initialize firebase: $e");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shekhar's portfolio",
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.grey.shade50,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black54)
            .copyWith(
                titleLarge: TextStyle(color: primaryColor),
                titleMedium: TextStyle(color: secondaryColor)),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}