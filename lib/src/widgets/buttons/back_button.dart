import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBackButton extends StatelessWidget {
  final Color? color;
  final String? icon;
  final VoidCallback? onPressed;

  const AppBackButton({super.key, this.color, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ?? () => context.safePop(),
      icon: SvgPicture.asset(
        icon ?? AppAssets.iconChevronLeft,
        width: AppSizes.s24,
        height: AppSizes.s24,
        colorFilter: color != null
            ? ColorFilter.mode(color ?? AppColors.black, BlendMode.srcIn)
            : null,
      ),
    );
  }
}
