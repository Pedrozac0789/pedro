import 'package:flutter/material.dart';
import '../widgets/pizzeria_card.dart';
import '../models/pizzeria.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Pizzeria> _pizzerias = [];

  @override
  void initState() {
    super.initState();
    _loadPizzeriasData();
  }

  Future<void> _loadPizzeriasData() async {
    final String response = await rootBundle.loadString('assets/pizzerias_data.json');
    final data = await json.decode(response);
    setState(() {
      _pizzerias = (data['pizzerias'] as List).map((pizzeria) => Pizzeria.fromJson(pizzeria)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizzarias'),
      ),
      drawer: CustomDrawer(), // Adicionando o CustomDrawer aqui
      body: ListView.builder(
        itemCount: _pizzerias.length,
        itemBuilder: (context, index) {
          return PizzeriaCard(pizzeria: _pizzerias[index]);
        },
      ),
    );
  }
}