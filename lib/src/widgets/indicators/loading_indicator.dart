import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';

class AppLoadingIndicator extends StatelessWidget {
  final double size;
  final EdgeInsetsGeometry padding;

  const AppLoadingIndicator({
    super.key,
    this.size = AppSizes.s24,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: AppImage(asset: AppAssets.animationLoading, size: size),
    );
  }
}
