import 'package:flutter/material.dart';
import 'package:internal_news/theme/app_colors.dart';

class InternalSubTitleText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final FontWeight fontWeight;
  final Color? color;
  final double fontSize;

  const InternalSubTitleText({
    required this.text,
    this.fontFamily = 'Urbanist',
    this.fontWeight = FontWeight.w500,
    this.color = AppColors.secondaryColor,
    this.fontSize = 16.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
