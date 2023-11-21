import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpacing),
          child: Column(
            children: [
              const SizedBox(height: TSizes.spaceBtwSections * 0.8),
              
              Text(
                "Lets create an account",
                style: Theme.of(context).textTheme.headlineSmall,
              ),

              const SizedBox(height: TSizes.spaceBtwSections * 1.7),

              // Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: 'First Name',
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: 'Last Name',
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user_edit),
                        labelText: 'Username',
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: 'Email',
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: 'Password',
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: 'Confirm Password',
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections * 1.5),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {}, 
                        child: const Text("Create Account")
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        )
      ),
    );
  }
}