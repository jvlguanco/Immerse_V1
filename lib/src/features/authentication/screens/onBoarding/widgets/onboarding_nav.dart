import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers/onboarding_controller.dart';

class OnBoardingDotNav extends StatelessWidget {
  const OnBoardingDotNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() * 0.9,
      left: TSizes.defaultSpacing,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: TColors.dark, dotHeight: 6),
      )
    );
  }
}