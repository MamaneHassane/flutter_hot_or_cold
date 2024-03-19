// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hot_or_cold/pages/favourites_page.dart';
import 'package:hot_or_cold/pages/home_page.dart';
import 'package:hot_or_cold/pages/profile_page.dart';
import 'package:hot_or_cold/pages/settings_page.dart';

class NavigationPage extends StatefulWidget {
  NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  // La liste des page
  List pages = [
    HomePage(),
    FavouritesPage(),
    ProfilePage(),
    SettingsPage()
  ];
  // L'index de la page courante
  int currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      
      body: pages[currentSelectedIndex],
      bottomNavigationBar: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        haptic: true,
        iconSize: 24,
        tabBorderRadius: 30,
        padding: EdgeInsets.all(15),
        tabMargin: EdgeInsets.symmetric(vertical: 8),
        backgroundColor: Colors.grey.shade100,
        tabBackgroundColor: Color.fromARGB(255, 0, 0, 0) ,
        activeColor: Color.fromARGB(255, 250, 250, 250) ,
        tabActiveBorder: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
        selectedIndex: currentSelectedIndex,
        onTabChange: (index)=>{
          setState(() {
            currentSelectedIndex = index;
          })
        },
        tabs: [
          GButton(icon: Icons.home, text: 'Home',),
          GButton(icon: Icons.favorite, text: 'Loved',),
          GButton(icon: Icons.person, text: 'Profile',),
          GButton(icon: Icons.settings, text: 'Settings',),
        ],
      ),
    );
  }
}