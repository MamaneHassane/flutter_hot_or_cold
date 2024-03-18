// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hot_or_cold/components/title_text_part.dart';
import 'package:lottie/lottie.dart';

class AppOpeningPage extends StatelessWidget {
  const AppOpeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],   
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    color : Colors.lightBlue
                  ),
                  
                ],
              ),
              Text(
                "How do you want your next drink ?",
                style: GoogleFonts.aBeeZee(
                  fontSize : 25,
                  color :Color.fromARGB(255, 101, 65, 40)
                ),
              ), 
              Center(
                child: Lottie.asset(
                  'lib/animations/appOpeningLottie.json',
                  height: 400
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(context, 'navigation')
                },
                child: Container(
                  decoration: BoxDecoration(
                    color : Colors.white ,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(  
                      mainAxisAlignment: MainAxisAlignment.center,           
                      children: [
                        Text(
                          "Get started",
                          style: GoogleFonts.lato(
                            fontSize : 25,
                            color : Color.fromARGB(255, 101, 65, 40),
                            fontWeight :FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 101, 65, 40),
                        )
                    ],),
                  ),
                ),
              ),
              
            ],
          ),
        )
        
      ,)
      ,   
    );
  }
}

