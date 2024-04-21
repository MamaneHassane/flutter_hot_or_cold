// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hot_or_cold/components/title_text_part.dart';

class AppOpeningPage extends StatelessWidget {
  const AppOpeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),   
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "How do you want your next drink ?",
                      style: GoogleFonts.abel(
                      color : Colors.pink,
                      fontSize : 25,
                      fontWeight : FontWeight.bold,
                    ),
                    ), 
                    SizedBox(height: 25,),
                    Center(
                      child: Image.asset(
                        'lib/animations/tea.gif',
                        height: 400
                      ),
                    ),
                    
                      Row(
                      
                      children: [
                        TitleTextPart(
                          text : 'Hot',
                          color : Colors.red
                        ),
                        TitleTextPart(
                          text : 'Or',
                          color : Colors.black
                        ),
                        TitleTextPart(
                          text : 'Cold',
                          color : Color.fromARGB(255, 25, 170, 238)
                        ),
                        TitleTextPart(
                          text : '?',
                          color : Colors.black
                        )
                        
                      ],
                    ),
                    Text(
                      "Feeling thirsty? Command yourself a drink from home !",
                      style: GoogleFonts.abel(
                        color : Colors.black,
                        fontSize : 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () => {
                        Navigator.pushNamed(context, 'navigation')
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color : Color.fromARGB(255, 0, 0, 0) ,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(  
                            mainAxisAlignment: MainAxisAlignment.center,           
                            children: [
                              Text(
                                "Get started ",
                                style: GoogleFonts.abel(
                                  fontSize : 25,
                                  color : Colors.white,
                                  fontWeight :FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              )
                          ],),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        )
        
      ,)
      ,   
    );
  }
}

