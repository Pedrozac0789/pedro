import 'pizza.dart';

class Pizzeria {
  final String name;
  final String location;
  final List<Pizza> pizzas;

  Pizzeria({required this.name, required this.location, required this.pizzas});

  factory Pizzeria.fromJson(Map<String, dynamic> json) {
    var list = json['pizzas'] as List;
    List<Pizza> pizzasList = list.map((i) => Pizza.fromJson(i)).toList();

    return Pizzeria(
      name: json['name'],
      location: json['location'],
      pizzas: pizzasList,
    );
  }
}