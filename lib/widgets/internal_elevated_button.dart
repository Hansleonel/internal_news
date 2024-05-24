import 'package:flutter/material.dart';
import 'package:internal_news/theme/app_colors.dart';

class InternalElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;

  const InternalElevatedButton({
    required this.buttonText,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 0,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w600,
              fontSize: 16),
        ),
      ),
    );
  }
}
