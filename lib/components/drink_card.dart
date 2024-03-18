// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DrinkCard extends StatelessWidget {
  // Les propriétés
  final String drinkName;
  final String drinkDescription;
  final String drinkImageUrl;
  // Le constructeur
  const DrinkCard({
    super.key,
    required this.drinkName,
    required this.drinkDescription,
    required this.drinkImageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          
        ),
      ),
    );
  }
}