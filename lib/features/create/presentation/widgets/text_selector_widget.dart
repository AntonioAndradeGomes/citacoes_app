import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/config/theme/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TextSelectorWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function()? onTap;
  final double size;
  const TextSelectorWidget({
    super.key,
    required this.label,
    required this.isSelected,
    this.onTap,
    required this.size,
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
        padding: dimensions.paddingVertical(8),
        decoration: BoxDecoration(
          borderRadius: dimensions.borderRadius(10),
          color: isSelected ? AppColors.portage : Colors.transparent,
        ),
        width: size,
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
