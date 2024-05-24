import 'package:flutter/material.dart';
import 'package:internal_news/theme/app_colors.dart';

class InternalHeadingText extends StatelessWidget {
  final String text;

  const InternalHeadingText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'Playfair',
        fontWeight: FontWeight.w700,
        color: AppColors.secondaryColor,
        fontSize: 32,
      ),
    );
  }
}
