import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helper/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subtitle
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 70,
        left: 20,
        right: 20,
        bottom: 50,
      ),
      child: Column(
        children: [
          Text(
            title,
              style: TextStyle(
                fontFamily: 'Rhodium',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          Image(
            width: THelperFunctions.screenWidth() * 0.6,
            height: THelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}