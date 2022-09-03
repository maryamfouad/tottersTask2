import 'package:flutter/material.dart';
import 'package:totterstask/Screens/bottomNav.dart';
import 'package:totterstask/Screens/restaurant.dart';
import 'package:totterstask/Screens/search.dart';

import 'Screens/Home.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}


