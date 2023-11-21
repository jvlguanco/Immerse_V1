import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immerse/src/features/authentication/screens/login/login.dart';
import 'package:immerse/src/features/authentication/screens/success_screen/success_screen.dart';

import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Add this line to remove the default back arrow
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: TSizes.defaultSpacing,
            right: TSizes.defaultSpacing,
          ),
          child: Column(
            children: [
              Text(
                "Verify your email",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              Text(
                "We have sent an email to your email address. Please verify your email to continue.",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 26),

              ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                  title: "Email verified",
                  message: "Your email has been verified successfully.",
                  onPressed: () => Get.to(() => const LoginScreen()),
                )),
                child: const Text("Continue"),
              ),

              const SizedBox(height: 16),

              ElevatedButton(
                onPressed: () {},
                child: const Text("Resend email"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}