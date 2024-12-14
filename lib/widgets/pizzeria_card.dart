import 'package:flutter/material.dart';
import '../models/pizzeria.dart';
import '../screens/pizza_menu_screen.dart';

class PizzeriaCard extends StatelessWidget {
  final Pizzeria pizzeria;

  PizzeriaCard({required this.pizzeria});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(pizzeria.name),
        subtitle: Text(pizzeria.location),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PizzaMenuScreen(pizzas: pizzeria.pizzas),
            ),
          );
        },
      ),
    );
  }
}