// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {

  final String username;
  final String profilePicturePath;

  const CustomAppBar({super.key, required this.username, required this.profilePicturePath});

  @override
  Widget build(BuildContext context) {
    return  
        Container(     
                  decoration: BoxDecoration(
                    color: Colors.black,
                    // borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      // A column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                              // Hello 
                              Text(
                                "Hello ",
                                style: GoogleFonts.abel(
                                  color: Colors.white,
                                  fontWeight : FontWeight.bold,
                                  fontSize : 25,
                                  
                                )
                              ),
                              // Username : A variable
                              Text(
                                "$username ",
                                style: GoogleFonts.abel(
                                  fontWeight : FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize : 25,
                                  color : Colors.pink
                                )
                              )
                              ],
                            ),
          
                            Text(
                              "What you wanna drink ?",
                              style: GoogleFonts.abel(
                                color: Colors.white,
                                fontSize : 20,
                                fontStyle: FontStyle.italic
                              ),
                            ),
                            
                          ],
                        ),
                        
                        // Image container
                        Padding(
                          padding: const EdgeInsets.only(left:40),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                                width: 2
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child : Image.asset(profilePicturePath, height: 50,)
                          ),
                        ),
                    ],),
                );

  }
}