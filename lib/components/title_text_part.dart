import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleTextPart extends StatelessWidget {
  final String text;
  final Color color;

  const TitleTextPart({
    super.key,
    required this.text,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text ',
      style : GoogleFonts.abel(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: color,
      )
    );
  }
}