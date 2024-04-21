// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hot_or_cold/models/drink.dart';

class FavouriteDrinkCard extends StatelessWidget {

  final Drink drink;

  const FavouriteDrinkCard({
    super.key,
    required this.drink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Image.asset(
              "lib/images/${drink.drinkImageName}",
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  drink.drinkName,
                  style: GoogleFonts.abel(
                    color: Colors.pink,
                    fontSize : 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height : 25,
            decoration: BoxDecoration(
              color: Colors.pink.shade200,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              Icons.add,
              color: Colors.pink,
            ),
          )

        ],
      ),
    );
  }
}
