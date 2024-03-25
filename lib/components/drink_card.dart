// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hot_or_cold/models/drink.dart';

class DrinkCard extends StatelessWidget {
  // Les propriétés
  final Drink drink;
  // Le constructeur
  const DrinkCard({
    super.key,
    required this.drink
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: ()=>{},
        child: Container(
          height: 80,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/${drink.getDrinkImageUrl}"),
              fit: BoxFit.contain
            ),
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16)
          ),
          child: Column(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        drink.getDrinkName,
                        style: GoogleFonts.abel(
                          color:Colors.indigo.shade800,
                          fontSize:16,
                          fontWeight:FontWeight.bold
                        ),
                      ),
                      Text(
                        "\$${drink.getPricePerLitter}/liter",
                        style: GoogleFonts.abel(
                          color:Colors.pink,
                          fontSize:20,
                          fontWeight:FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}