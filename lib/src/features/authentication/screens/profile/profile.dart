import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:immerse/src/utils/helper/helper_functions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 20,
            right: 20,
          ),

          child: Column(
            children: [
              Text(
                "PROFILE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Container(
                width: THelperFunctions.screenWidth() * 0.9,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 222, 222, 222),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Iconsax.user, 
                            size: 30
                          ),

                          const SizedBox(width: 50),

                          Text(
                            "Edit Profile",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          Icon(
                            Iconsax.security, 
                            size: 30
                          ),

                          const SizedBox(width: 50),

                          Text(
                            "Security",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          Icon(
                            Iconsax.notification, 
                            size: 30
                          ),

                          const SizedBox(width: 50),

                          Text(
                            "Notification",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          Icon(
                            Iconsax.lock, 
                            size: 30
                          ),

                          const SizedBox(width: 50),

                          Text(
                            "Privacy",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )            
              ),

              const SizedBox(height: 40),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Support & About",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Container(
                width: THelperFunctions.screenWidth() * 0.9,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 222, 222, 222),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.help_outlined, 
                            size: 30
                          ),

                          const SizedBox(width: 50),

                          Text(
                            "Help & Support",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          Icon(
                            Iconsax.info_circle, 
                            size: 30
                          ),

                          const SizedBox(width: 50),

                          Text(
                            "Terms & Conditions",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )            
              ),
            ],
          ),
        ),
      )
    );
  }
}