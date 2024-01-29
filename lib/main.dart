import 'package:crowdafrik/views/first-screen.dart';
import 'package:crowdafrik/views/home_screen.dart';
import 'package:crowdafrik/views/landing_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}
