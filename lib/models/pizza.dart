class Pizza {
  final String flavor;
  final double price;
  final List<String> ingredients;
  final List<String> allergies;

  Pizza({
    required this.flavor,
    required this.price,
    required this.ingredients,
    required this.allergies,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      flavor: json['flavor'],
      price: json['price'],
      ingredients: List<String>.from(json['ingredients']),
      allergies: List<String>.from(json['allergies']),
    );
  }
}