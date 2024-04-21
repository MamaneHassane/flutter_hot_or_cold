// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileParameterTile extends StatelessWidget {

  // Le nom du paramètre
  final String parameterName;
  // La valeur du paramètre
  final String parameterValue;

  ProfileParameterTile({
    super.key,
    required this.parameterName,
    required this.parameterValue,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            parameterName,
            style: GoogleFonts.abel(
              fontSize: 25,
              fontWeight : FontWeight.bold,
              // color: Colors.black
            ),
          ),
          Text(
            parameterValue,
            style: GoogleFonts.abel(
                fontSize: 20,
                fontWeight : FontWeight.w200
            ),
          ),
        ],
      ),
    );
  }
}
