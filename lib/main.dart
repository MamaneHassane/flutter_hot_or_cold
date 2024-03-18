// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hot_or_cold/pages/app_opening_page.dart';
import 'package:hot_or_cold/pages/navigation_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: AppOpeningPage(),
      routes: {
        'navigation' : (context) => NavigationPage(),
      },
    );
  }
}
