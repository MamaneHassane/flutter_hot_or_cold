// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hot_or_cold/components/settings_parameter_tile.dart';
import 'package:hot_or_cold/components/settings_parameter_tile_tooglable.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white ,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color : Colors.white
                ),
                child: Padding(
                    padding:  EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  "Paramètres",
                                  style: GoogleFonts.abel(
                                    color: Colors.black,
                                    fontSize : 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]
                          )
                          
                        ),
                        SizedBox(height: 24),
                        SettingsParameterTileTooglable(
                          parameterIcon: Icons.dark_mode,
                          parameterName: "Dark mode", 
                          parameterValue: false,
                        ),
                        SettingsParameterTileTooglable(
                          parameterIcon: Icons.notifications,
                          parameterName: "Notifications", 
                          parameterValue: true,
                        ),
                        GestureDetector(
                          onTap: (){
                            // Fonction pour modifier ce paramètre
                          },
                          child: SettingsParameterTile(
                            parameterIcon: Icons.memory,
                            parameterName: "Cache size",
                            parameterValue: "20 mb",
                                        
                          ),
                        ),
                      ],
                    )
                ),
              )
            ],
          ),
        )
    );
  }

}