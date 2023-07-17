import 'package:citacoes/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class BottomNavigationIten extends StatelessWidget {
  final BuildContext context;
  final IconData icon;
  final bool selectPage;
  final String label;
  final Function() onTap;

  const BottomNavigationIten({
    super.key,
    required this.context,
    required this.icon,
    required this.selectPage,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: selectPage ? AppColors.portage : Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 3,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
