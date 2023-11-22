import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immerse/src/features/authentication/screens/explore/explore.dart';

import '../../../../../navigation_menu.dart';
import '../content/content.dart';

class PopUpScreen extends StatelessWidget {
  const PopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Remove background color/ Change arrow color to black
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150,),

            const Text(
              "Spoliarium",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "Righteous"
              ),
            ),

            const SizedBox(height: 20,),

            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Spoliarium.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            const SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () => Get.to(() => const ContentScreen()),
              child: const Text(
                "Explore",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  fontFamily: "Righteous"
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50),
                backgroundColor: const Color.fromARGB(255, 62, 62, 62), // Change button color to black
              ),
            )
          ],
        )
      ),
    );
  }
}