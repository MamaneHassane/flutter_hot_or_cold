// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  // L'icône du button
  final IconData icon;
  // La couleur de l'icône
  final Color iconColor;
  // La couleur d'arrière plan
  final Color backgroundColor;


  const MyIconButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Icon(
          icon,
          color: iconColor,
          size: 30,
        ),
      ),
    );
  }
}
