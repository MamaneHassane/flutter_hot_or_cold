// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsParameterTileTooglable extends StatefulWidget {

  // L'icône du paramètre
  final IconData parameterIcon;
  // Le nom du paramètre
  final String parameterName;
  // La valeur du paramètre
  bool parameterValue;

  SettingsParameterTileTooglable({
    super.key,
    required this.parameterIcon,
    required this.parameterName,
    required this.parameterValue,
  });

  @override
  State<SettingsParameterTileTooglable> createState() => _SettingsParameterTileTooglableState();
}

class _SettingsParameterTileTooglableState extends State<SettingsParameterTileTooglable> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                widget.parameterIcon,
                size: 28,
                color: Colors.pink,
              ),
              SizedBox(width: 20,),
              Text(
                widget.parameterName,
                style: GoogleFonts.abel(
                  fontSize: 25,
                  fontWeight : FontWeight.bold,
                  // color: Colors.black
                ),
              ),
            ],
          ),
          Switch(
            value: widget.parameterValue,
            activeColor: Colors.pink,
            onChanged: (value){
              setState(() {
                widget.parameterValue = value;
                print(widget.parameterValue);
              });
            }
          ),
        ],
      ),
    );
  }
}
