// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTitle extends StatelessWidget {

  final String title;

  const CategoryTitle({
    super.key,
    required this.title,
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
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.black,
                    size: 30,
                  )
                ],
              ),
            );
  }
}