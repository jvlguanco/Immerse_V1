import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immerse/navigation_menu.dart';
import 'package:immerse/src/utils/constants/image_strings.dart';
import 'package:immerse/src/utils/helper/clip_path.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.offAll(() => const NavigationMenu());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Upper(),

                const SizedBox(height: 60),

                Lower()
              ],
            ),

            Center(
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(TImages.juan),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Lower extends StatelessWidget {
  const Lower({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [

            Text(
              "Juan Luna",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "Roboto"
              ),
            ),

            Text(
              "Artist",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "Roboto"
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Spoliarium",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "Righteous"
              ),
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                Text(
                  "Year Created: ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto"
                  ),
                ),

                const SizedBox(width: 200),

                Text(
                  "1884",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Roboto"
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),
            
            Row(
              children: [
                Text(
                  "Oil on Canvas ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto"
                  ),
                ),

                const SizedBox(width: 175),

                Text(
                  "Medium",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Roboto"
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),
            
            Row(
              children: [
                Text(
                  "Gift of Spain",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto"
                  ),
                ),

                const SizedBox(width: 160),

                Text(
                  "Background",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Roboto"
                  ),
                ),
              ],
            ),
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
        child: Container(
          width: 400,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(TImages.spoliarium),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}