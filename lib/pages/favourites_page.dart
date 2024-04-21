// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hot_or_cold/components/favourite_drink_card.dart';
import 'package:hot_or_cold/components/title_text_part.dart';

import '../models/drink.dart';

class FavouritesPage extends StatefulWidget {

  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {

  // La liste des boissons à afficher
  List favouritesDrinks = [
    Drink(drinkId: 1, drinkName: 'Bubble tea', drinkImageName: 'bubble-tea.png', pricePerLiter: '4', rating: '4'),
    Drink(drinkId: 2, drinkName: 'Matcha latte', drinkImageName: 'matcha-latte.png', pricePerLiter: '5', rating: '5'),
    Drink(drinkId: 3, drinkName: 'Tea', drinkImageName: 'tea.png', pricePerLiter: '3', rating: '4'),
    Drink(drinkId: 4, drinkName: 'Coffee', drinkImageName: 'coffee-cup.png', pricePerLiter: '5', rating: '5'),
    Drink(drinkId: 5, drinkName: 'Juice', drinkImageName: 'juice.png', pricePerLiter: '4', rating: '5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: SafeArea(
        child: Column(
          children: [
            TitleTextPart(
              text: 'Your favourite drinks',
              color: Colors.pink,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: favouritesDrinks.length,
                itemBuilder: (BuildContext context, int index){
                  return FavouriteDrinkCard(drink: favouritesDrinks[index]);
                },
              )
            ),
          ],
        ),
      )
    );
  }
}