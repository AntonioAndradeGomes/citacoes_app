import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/features/created_for_you/presentation/created_for_you_page.dart';
import 'package:citacoes/features/discovery/presentation/discovery_page.dart';
import 'package:citacoes/features/favorites/presentation/favorites_page.dart';
import 'package:citacoes/features/profile/presentation/profile_page.dart';
import 'package:citacoes/features/search/presentation/search_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          CreatedForYouPage(),
          DiscoveryPage(),
          SearchPage(),
          FavoritesPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        color: AppColors.blueRibbon,
        elevation: 0,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bootomItem(
                context: context,
                icon: IconlyLight.edit,
                page: 1,
                label: 'Minhas',
              ),
              _bootomItem(
                context: context,
                icon: IconlyLight.discovery,
                page: 1,
                label: 'Explorar',
              ),
              _bootomItem(
                context: context,
                icon: IconlyLight.search,
                page: 1,
                label: 'Buscar',
              ),
              _bootomItem(
                context: context,
                icon: IconlyLight.heart,
                page: 1,
                label: 'Favoritas',
              ),
              _bootomItem(
                context: context,
                icon: IconlyLight.profile,
                page: 1,
                label: 'Perfil',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bootomItem({
    required BuildContext context,
    required IconData icon,
    required int page,
    required String label,
  }) {
    return ZoomTapAnimation(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
            ),
            Text(
              label,
            ),
          ],
        ),
      ),
    );
  }
}
