import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/features/authentication/screens/onBoarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SafeArea(
        child: const OnboardingScreen()
      )
    );
  }
}