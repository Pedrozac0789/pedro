import 'package:flutter/material.dart';
import '../models/pizza.dart';
import '../widgets/pizza_card.dart';

class PizzaMenuScreen extends StatelessWidget {
  final List<Pizza> pizzas;

  PizzaMenuScreen({required this.pizzas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu de Pizzas'),
      ),
      body: ListView.builder(
        itemCount: pizzas.length,
        itemBuilder: (context, index) {
          return PizzaCard(pizza: pizzas[index]);
        },
      ),
    );
  }
}