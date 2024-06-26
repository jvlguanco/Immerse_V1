import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:immerse/navigation_menu.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';
import '../signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const SizedBox(height: TSizes.spaceBtwSections * 3.5),
              Column(
                children: [
                  Text(
                    TText.appName,
                    style: TextStyle(
                      fontFamily: 'Righteous',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: TSizes.m),
                  Text(
                    TText.appSlogan,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: TSizes.l),
                ],
              ),

              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: 'Email',
                        ),
                      ),
                
                      const SizedBox(height: TSizes.l),
                
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: 'Password',
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                
                      const SizedBox(height: TSizes.l / 2),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true, 
                                onChanged: (value) {}
                              ),
                              const Text("Remember me"),
                            ],
                          ),
                
                          TextButton(
                            onPressed: () {}, 
                            child: const Text("Forgot password?")
                          )
                        ],
                      ),
                
                      const SizedBox(height: TSizes.spaceBtwSections),
                
                      // Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.to(const NavigationMenu()), 
                          child: const Text("Sign In")
                        ),
                      ),

                      const SizedBox(height: TSizes.spaceBtwItems),
                
                      // Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () => Get.to(const SignupScreen()), 
                          child: const Text("Create Account")
                        ),
                      ),

                      const SizedBox(height: TSizes.spaceBtwSections / 4),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}