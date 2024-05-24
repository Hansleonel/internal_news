import 'package:flutter/material.dart';
import 'package:internal_news/theme/app_colors.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text('News Page'),
      ),
      body: Center(
        child: const Text('News Page Content'),
      ),
    );
  }
}
