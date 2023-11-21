import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:immerse/src/utils/constants/colors.dart';
import 'package:immerse/src/utils/constants/image_strings.dart';
import 'package:immerse/src/utils/helper/clip_path.dart';
import 'package:immerse/src/utils/helper/helper_functions.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Upper(),

                const SizedBox(height: 60),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Manila Museums",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(height: 10),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "National Museums in Manila",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(TImages.img1),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20), // Change the radius value here
                              ),
                            ),

                            const SizedBox(width: 20),

                            Container(
                              height: 120,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(TImages.img2),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20), // Change the radius value here
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(TImages.img3),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20), // Change the radius value here
                              ),
                            ),

                            const SizedBox(width: 20),

                            Container(
                              height: 120,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(TImages.img4),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20), // Change the radius value here
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

            Center(
              child: Padding(
                padding: EdgeInsets.only(top: THelperFunctions.screenHeight() * 0.3),
                child: Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20), // Change the radius value here
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                      left: 8,
                      right: 8,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.nfc_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Hold your phone near an Artwork Reader",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Upper extends StatelessWidget {
  const Upper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: Container(
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Container(
              width: 400,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(TImages.background),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  Text(
                    "IMMERSE PH",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
            
                  const SizedBox(height: 20),
            
                  Icon(
                    Iconsax.magic_star,
                    size: 50,
                    color: Colors.white,
                  ),
            
                  const SizedBox(height: 20),
                  
                  Text(
                    "WELCOME JHAN VINCENT!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}