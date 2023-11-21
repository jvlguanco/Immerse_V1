import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }

  void nextPage(){
    if(currentPageIndex.value < 2){
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    } else {
      Get.offAll(const LoginScreen());
    }
  }
}