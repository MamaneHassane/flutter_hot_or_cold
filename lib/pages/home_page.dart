// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100] ,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 101, 65, 40),
        onPressed: (){

        },
        child: Icon(
          Icons.shopping_cart,
          color: Color.fromARGB(255,255,255,255),
        ),
      ),
      body: Center(child: Text("H O M E  P A G E"),),
    );
  }
}