// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hot_or_cold/components/my_icon_button.dart';
import 'package:hot_or_cold/components/profile_parameter_tile.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.pink
                          ),
                        )
                      ),
                      /*
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          )
                      ),
                      */
                    ],
                  ),
                  Center(
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: Colors.grey.shade200,
                              width: 5,
                            ),
                          ),
                          height: 150,
                          child: Image.asset("lib/images/lion.png"),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyIconButton(
                                icon: Icons.delete,
                                iconColor: Colors.red,
                                backgroundColor: Colors.white,
                            ),
                            SizedBox(width: 12),
                            MyIconButton(
                                icon: Icons.edit,
                                iconColor: Colors.yellow,
                                backgroundColor: Colors.white,
                            )
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color : Colors.white
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Informations du profil",
                              style: GoogleFonts.abel(
                                color: Colors.black,
                                fontSize : 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 24),
                            ProfileParameterTile(
                                parameterName: "Username",
                                parameterValue: "the_lion",
                            ),

                            ProfileParameterTile(
                                parameterName: "Email",
                                parameterValue: "theking@jungle.world",
                            ),

                            ProfileParameterTile(
                                parameterName: "Phone number",
                                parameterValue: "+227 92461830",
                            ),

                            ProfileParameterTile(
                              parameterName: "Address",
                              parameterValue: "Riad Salam, Mohammedia, Morroco", 
                            )

                          ],
                        )
                      ),
                    ),
                  ),
                ]
              ),
            )
          ],
        ),
      )
    );
  }
}