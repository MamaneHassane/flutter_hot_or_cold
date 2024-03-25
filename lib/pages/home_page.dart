// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hot_or_cold/components/category_title.dart';
import 'package:hot_or_cold/components/categoty_tile_with_text.dart';
import 'package:hot_or_cold/components/custom_app_bar.dart';
import 'package:hot_or_cold/components/custom_search_bar.dart';
import 'package:hot_or_cold/components/drink_card.dart';
import 'package:hot_or_cold/models/drink.dart';

class HomePage extends StatefulWidget {
  

  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  // Le texte dans la barre de recherche
  final String searchTerm = " ";

  // Les suggestions pour la barre de recherche
  Iterable<String>? autoFillForSearchBar = [
    "Coffee",
    "Macha Latte",
    "Milk",
    "Soda"
  ];

  // La liste des boissons à afficher
  List drinks = [
    Drink(drinkId: 1, drinkName: 'Bubble tea', drinkImageName: 'bubble-tea.png', pricePerLiter: '4', rating: '4'),
    Drink(drinkId: 2, drinkName: 'Matcha latte', drinkImageName: 'matcha-latte.png', pricePerLiter: '5', rating: '5'),
    Drink(drinkId: 3, drinkName: 'Tea', drinkImageName: 'tea.png', pricePerLiter: '3', rating: '4'),
    Drink(drinkId: 4, drinkName: 'Coffee', drinkImageName: 'coffee-cup.png', pricePerLiter: '5', rating: '5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        onPressed: (){

        },
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Custom App Bar
            CustomAppBar(
              username: "Rabbit",
              profilePicturePath: "lib/images/rabbit.png",
            ),

            // Custom Search Bar
            CustomSearchBar(
              autoFillForSearchBar: autoFillForSearchBar,
              onSearch: ()=>{},
            ),

            // All items title row
            CategoryTitle(
              title: "Drinks in shop",
              onTapOnIcon: ()=>{},
            ),
            // SizedBox(height: 40),
            // ListView of Drink Cards
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: drinks.length,
                itemBuilder: (BuildContext context, int index){
                  return DrinkCard(
                    drink: drinks[index],
                  );
                }
              ),
            ),
            CategoryTileWithText(
              title: "Specially for you",
              text: 'Get tempted',
              onTapOnText: ()=>{},
            ),

          ],
        ),
        
      ),
    );
  }
}

