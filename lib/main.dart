import 'package:flutter/material.dart';
import 'package:jillurrhman/customscrol.dart';
import 'package:jillurrhman/homepage.dart';

void main() {
  runApp(const MyApp());
}

  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior:MyCustomScrollBehavior(),
      home:HomePage(),
    );
  }
}