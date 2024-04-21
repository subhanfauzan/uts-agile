import 'package:app_money/pages/main_page.dart';
import 'package:app_money/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      // theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
