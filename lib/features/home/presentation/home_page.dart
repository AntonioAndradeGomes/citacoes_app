import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/features/created_for_you/presentation/created_for_you_page.dart';
import 'package:citacoes/features/discovery/presentation/discovery_page.dart';
import 'package:citacoes/features/favorites/presentation/favorites_page.dart';
import 'package:citacoes/features/home/presentation/navigation_controller.dart';
import 'package:citacoes/features/home/presentation/widgets/bottom_navigation_iten.dart';
import 'package:citacoes/features/profile/presentation/profile_page.dart';
import 'package:citacoes/features/search/presentation/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatelessWidget {
  final _navigatorController = Get.find<NavigationController>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        color: AppColors.blueRibbon,
        elevation: 0,
        padding: EdgeInsets.zero,
        height: 60,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomNavigationIten(
                  context: context,
                  icon: IconlyLight.edit,
                  selectPage: _navigatorController.currentPage ==
                      NavigationTabs.createdForYou,
                  label: 'Minhas',
                  onTap: () {
                    _navigatorController.navigatePageView(
                      NavigationTabs.createdForYou,
                    );
                  },
                ),
                BottomNavigationIten(
                  context: context,
                  icon: IconlyLight.discovery,
                  selectPage: _navigatorController.currentPage ==
                      NavigationTabs.discovery,
                  label: 'Explorar',
                  onTap: () {
                    _navigatorController.navigatePageView(
                      NavigationTabs.discovery,
                    );
                  },
                ),
                BottomNavigationIten(
                  context: context,
                  icon: IconlyLight.search,
                  selectPage:
                      _navigatorController.currentPage == NavigationTabs.search,
                  label: 'Buscar',
                  onTap: () {
                    _navigatorController.navigatePageView(
                      NavigationTabs.search,
                    );
                  },
                ),
                BottomNavigationIten(
                  context: context,
                  icon: IconlyLight.heart,
                  selectPage: _navigatorController.currentPage ==
                      NavigationTabs.favorites,
                  label: 'Favoritas',
                  onTap: () {
                    _navigatorController.navigatePageView(
                      NavigationTabs.favorites,
                    );
                  },
                ),
                BottomNavigationIten(
                  context: context,
                  icon: IconlyLight.profile,
                  selectPage: _navigatorController.currentPage ==
                      NavigationTabs.profile,
                  label: 'Perfil',
                  onTap: () {
                    _navigatorController.navigatePageView(
                      NavigationTabs.profile,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _navigatorController.pagecontroller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          CreatedForYouPage(),
          DiscoveryPage(),
          SearchPage(),
          FavoritesPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
