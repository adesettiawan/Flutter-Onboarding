import 'package:flutter/material.dart';
import 'package:onboarding/ui/home_page.dart';
import 'package:onboarding/ui/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
