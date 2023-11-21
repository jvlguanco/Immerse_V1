import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'src/features/authentication/screens/Achievement/achievement.dart';
import 'src/features/authentication/screens/explore/explore.dart';
import 'src/features/authentication/screens/profile/profile.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 65,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
      
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.bookmark),
              label: 'Explore',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.star),
              label: 'Achievements',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),

      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  
  final screens = [
    const ExploreScreen(),
    const AchievementScreen(),
    const ProfileScreen()
  ];
}