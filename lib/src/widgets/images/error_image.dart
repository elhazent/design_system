import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppErrorImage extends StatelessWidget {
  final String? asset;
  final double? width, height, size;
  final EdgeInsetsGeometry? margin, padding;
  final BorderRadius? borderRadius;
  final BoxFit? fit;

  const AppErrorImage({
    super.key,
    this.asset,
    this.width,
    this.height,
    this.size = AppSizes.s48,
    this.margin,
    this.padding,
    this.borderRadius,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? size,
      height: height ?? size,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(borderRadius: borderRadius ?? AppRadius.zero),
      child: AppImage(
        asset: asset ?? AppAssets.imagePlaceholder,
        width: width ?? size,
        height: height ?? size,
        fit: fit,
      ),
    );
  }
}
