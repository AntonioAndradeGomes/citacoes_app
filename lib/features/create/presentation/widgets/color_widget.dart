import 'package:citacoes/config/theme/dimensions.dart';
import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  final Color color;
  final bool active;
  final GestureTapCallback onTap;
  const ColorWidget({
    super.key,
    required this.color,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    return InkWell(
      borderRadius: dimensions.borderRadius(10),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: dimensions.borderRadius(10),
        ),
        height: dimensions.sizeBasedOnHeigth(40),
        width: dimensions.sizeBasedOnWidth(40),
        child: active
            ? const Center(
                child: Icon(
                  Icons.check_rounded,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
