import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppCheckbox extends StatelessWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final Color? activeColor;
  final double size;
  final double borderWidth;
  final double borderRadius;
  final bool tristate;

  const AppCheckbox({
    super.key,
    this.value = false,
    this.onChanged,
    this.activeColor,
    this.size = AppSizes.s16,
    this.borderWidth = 1,
    this.borderRadius = AppSizes.s4,
    this.tristate = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Checkbox(
        activeColor: activeColor ?? AppColors.primaryButton,
        splashRadius: AppSizes.s4,
        tristate: tristate,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        side: BorderSide(color: AppColors.border, width: borderWidth),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
