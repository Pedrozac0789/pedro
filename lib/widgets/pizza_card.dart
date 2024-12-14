import 'package:flutter/material.dart';
import '../models/pizza.dart';
import '../screens/pizza_details_screen.dart';

class PizzaCard extends StatelessWidget {
  final Pizza pizza;

  PizzaCard({required this.pizza});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(pizza.flavor),
        subtitle: Text('R\$ ${pizza.price.toStringAsFixed(2)}'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PizzaDetailsScreen(pizza: pizza),
            ),
          );
        },
      ),
    );
  }
}