import 'package:flutter/material.dart';
import 'package:internal_news/pages/login/login_page.dart';
import 'package:internal_news/theme/AppTheme.dart';

import 'pages/news/news_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.internalNewsTheme,
        routes: {
          '/login': (context) => const LoginPage(),
          '/news': (context) => const NewsPage(),
        },
        home: const LoginPage());
  }
}
