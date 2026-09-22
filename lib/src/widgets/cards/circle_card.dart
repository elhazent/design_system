import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppCircleCard extends StatelessWidget {
  final double size, elevation;
  final Color color, borderColor;
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  const AppCircleCard({
    super.key,
    this.elevation = AppSizes.zero,
    this.size = AppSizes.s40,
    this.color = AppColors.white,
    this.borderColor = AppColors.transparent,
    this.padding,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Material(
        color: color,
        elevation: elevation,
        shape: CircleBorder(side: BorderSide(color: borderColor)),
        child: Container(
          padding: padding ?? EdgeInsets.all(AppSizes.s4),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
