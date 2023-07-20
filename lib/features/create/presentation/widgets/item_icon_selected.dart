import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/config/theme/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ItemIconSelected extends StatelessWidget {
  final bool selected;
  final IconData icon;
  final Function()? onTap;

  const ItemIconSelected({
    super.key,
    required this.selected,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        margin: dimensions.paddingOnly(
          right: 5,
        ),
        width: dimensions.sizeBasedOnWidth(40),
        padding: dimensions.paddingVertical(8),
        decoration: BoxDecoration(
          borderRadius: dimensions.borderRadius(10),
          color: selected ? AppColors.portage : Colors.transparent,
        ),
        child: Center(
          child: Icon(
            icon,
            size: dimensions.sizeBasedOnWidth(20),
          ),
        ),
      ),
    );
  }
}
