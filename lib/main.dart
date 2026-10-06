import 'package:flutter/material.dart';
import 'splash_page.dart';

void main() {
  runApp(const LuxeApp());
}

class LuxeApp extends StatelessWidget {
  const LuxeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LUXE',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Arial',
      ),
      home: const SplashPage(),
    );
  }
}