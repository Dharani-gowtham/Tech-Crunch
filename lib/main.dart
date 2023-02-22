import 'package:flutter/material.dart';
import 'package:test_dart/views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Crunch',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}