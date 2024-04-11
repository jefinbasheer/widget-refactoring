import 'package:flutter/material.dart';
import 'package:widget_refactoring_1/factory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Factory(),
    );
  }
}
