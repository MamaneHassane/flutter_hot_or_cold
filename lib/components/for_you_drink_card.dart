import 'package:flutter/material.dart';
import '../models/drink.dart';

class ForYouDrinkCard extends StatelessWidget {

  final Drink drink;

  const ForYouDrinkCard({
    super.key,
    required this.drink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Center(
        child: Image.asset('lib/images/${drink.drinkImageName}'),
      ),
    );
  }
}
