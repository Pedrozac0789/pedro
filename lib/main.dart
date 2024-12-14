import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(PizzariaApp());
}

class PizzariaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizzaria',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}