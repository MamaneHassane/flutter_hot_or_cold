// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hot_or_cold/components/custom_app_bar.dart';

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
    "Soda",
    "Milk"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100] ,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        onPressed: (){

        },
        child: Icon(
          Icons.shopping_cart,
          color: Color.fromARGB(255,255,255,255),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              username: "Rabbit",
              profilePicturePath: "lib/images/rabbit.png",
            ),

            // Custom seacrchBar

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4),
              child: TextField(
                autofillHints: autoFillForSearchBar,
                cursorColor: Colors.pink,
                cursorErrorColor: Colors.red,
                style: GoogleFonts.abel(
                  color : Colors.pink,
                  fontSize : 20,
                  fontWeight: FontWeight.bold,                    
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink,
                      width: 2,
                    )
                  ),
                  hintText: "Something in head ?",
                  suffixIcon: GestureDetector(
                    onTap: () => {
                      // Commencer la recherche
                    },
                    child: Icon(
                      Icons.search,
                      color: const Color.fromARGB(255, 166, 161, 161),
                      size : 40
                    ),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}