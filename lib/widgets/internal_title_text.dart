import 'package:flutter/material.dart';
import 'package:internal_news/theme/app_colors.dart';

class InternalTitleText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color? color;

  const InternalTitleText({
    required this.text,
    this.color = AppColors.secondaryColor,
    this.fontWeight = FontWeight.w600,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontSize: 16,
      ),
    );
  }
}
