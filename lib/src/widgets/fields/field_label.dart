import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppFieldLabel extends StatelessWidget {
  final String label;
  final bool required;
  final TextStyle? style;

  const AppFieldLabel({
    super.key,
    required this.label,
    this.required = false,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle =
        style ??
        context.textTheme.bodyMediumMed.copyWith(color: AppColors.textHeading);

    return RichText(
      text: TextSpan(
        style: textStyle,
        children: [
          TextSpan(text: label),
          if (required)
            const TextSpan(
              text: ' *',
              style: TextStyle(color: AppColors.error),
            ),
        ],
      ),
    );
  }
}
