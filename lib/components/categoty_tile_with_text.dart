// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTileWithText extends StatelessWidget {
  final String title;
  final String text;
  final Function onTapOnText;

  const CategoryTileWithText({
    super.key,
    required this.title,
    required this.text,
    required this.onTapOnText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title ',
            style: GoogleFonts.abel(
                color : Colors.black,
                fontWeight : FontWeight.bold,
                fontSize : 25
            ),
          ),
          GestureDetector(
            child: Text(
              text,
              style : GoogleFonts.abel(
                color : Colors.pink,
                fontSize : 20,
                fontWeight : FontWeight.bold,
                fontStyle : FontStyle.italic
              )
            ),
            onTap: ()=>{onTapOnText},
          )
        ],
      ),
    );
  }
}
