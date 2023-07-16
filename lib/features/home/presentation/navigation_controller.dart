import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class NavigationTabs {
  static const int createdForYou = 0;
  static const int discovery = 1;
  static const int search = 2;
  static const int favorites = 3;
  static const int profile = 4;
}

class NavigationController extends GetxController {
  late PageController _pageController;
  late RxInt _currentIndex;

  PageController get pagecontroller => _pageController;
  int get currentPage => _currentIndex.value;

  @override
  void onInit() {
    super.onInit();
    _initNavigation(
      pageController: PageController(
        initialPage: NavigationTabs.createdForYou,
      ),
      currentIndex: NavigationTabs.createdForYou,
    );
  }

  void _initNavigation({
    required PageController pageController,
    required int currentIndex,
  }) {
    _pageController = pageController;
    _currentIndex = currentIndex.obs;
  }

  void navigatePageView(int page) {
    if (_currentIndex.value == page) {
      return;
    }
    _pageController.jumpToPage(page);
    _currentIndex.value = page;
  }

  @override
  void onClose() {
    _pageController.dispose();
    super.onClose();
  }
}
