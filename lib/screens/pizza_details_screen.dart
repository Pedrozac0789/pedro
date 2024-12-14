import 'package:flutter/material.dart';
import '../models/pizza.dart';

class PizzaDetailsScreen extends StatelessWidget {
  final Pizza pizza;

  PizzaDetailsScreen({required this.pizza});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pizza.flavor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ingredientes: ${pizza.ingredients.join(', ')}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Preço: R\$ ${pizza.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Intolerâncias: ${pizza.allergies.join(', ')}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}