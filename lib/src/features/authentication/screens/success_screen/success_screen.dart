import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.title, required this.message, required this.onPressed});

  final String title, message;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: TSizes.defaultSpacing,
            right: TSizes.defaultSpacing,
          ),
          child: Column(
            children: [
              Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
      
                const SizedBox(height: 16),
      
                Text(
                  message,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
      
                const SizedBox(height: 26),
      
                ElevatedButton(
                  onPressed: onPressed,
                  child: const Text("Continue"),
                ),
            ],
          ),
        ),
      ),
    );
  }
}