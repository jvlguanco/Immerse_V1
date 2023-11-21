import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:immerse/src/utils/constants/sizes.dart';
import 'package:immerse/src/utils/device/device_utility.dart';

import '../../../controllers/onboarding_controller.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpacing,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() * 0.4,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.black,
          padding: const EdgeInsets.all(16),
          elevation: 4,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}