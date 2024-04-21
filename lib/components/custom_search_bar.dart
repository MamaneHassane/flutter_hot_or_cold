// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {

  const CustomSearchBar({
    super.key,
    required this.autoFillForSearchBar,
  });

  final Iterable<String>? autoFillForSearchBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration( 
          color: Colors.pink,
          borderRadius: BorderRadius.circular(20)
        ),
        child: TextField(
          autofillHints: autoFillForSearchBar,
          cursorColor: Colors.white,
          style: GoogleFonts.abel(
            color : Colors.white,
            fontSize : 20,
            fontWeight: FontWeight.bold,                    
          ),
          decoration: InputDecoration(
            fillColor: Colors.pink,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.white,
                width: 1
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.pink,
                width: 2
              ),
            ),
            hintText: "Something in head ?",
            hintStyle: GoogleFonts.abel(
              color : const Color.fromARGB(255, 251, 221, 221)
            ),
            suffixIcon: GestureDetector(
              onTap: () => {
                // Commencer la recherche
                
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
                size : 40
              ),
            )
          ),
        ),
      ),
    );
  }
}