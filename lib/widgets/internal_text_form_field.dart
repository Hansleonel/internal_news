import 'package:flutter/material.dart';

class InternalTextFormField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  const InternalTextFormField(
      {Key? key, required this.hintText, this.prefixIcon, this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey[400],
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
