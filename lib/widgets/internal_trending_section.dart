import 'package:flutter/material.dart';

class TrendingSection extends StatelessWidget {
  final String titleTrending;
  final String titleActionTrending;
  final VoidCallback? onActionTap;
  const TrendingSection({
    super.key,
    required this.titleTrending,
    required this.titleActionTrending,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleTrending,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: onActionTap,
            child: Row(
              children: [
                Text(
                  titleActionTrending,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.teal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
