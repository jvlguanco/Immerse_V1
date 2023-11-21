import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:immerse/src/utils/constants/image_strings.dart';
import 'package:immerse/src/utils/constants/texts.dart';
import 'package:immerse/src/utils/device/device_utility.dart';

import '../../../../utils/constants/sizes.dart';
import '../../controllers/onboarding_controller.dart';
import 'widgets/onboarding_nav.dart';
import 'widgets/onboarding_next.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal PageView
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.intro1,
                title: TText.onboardingTitle1,
                subtitle: TText.onboardingSubtitle1,
              ),
              OnBoardingPage(
                image: TImages.intro1,
                title: TText.onboardingTitle2,
                subtitle: TText.onboardingSubtitle2,
              ),
              OnBoardingPage(
                image: TImages.intro1,
                title: TText.onboardingTitle3,
                subtitle: TText.onboardingSubtitle3,
              ),
            ],
          ),
        
          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation
          const OnBoardingDotNav(),

          // Next Button
          const OnBoardingNext(),
        ],
      ),
    );
  }
}