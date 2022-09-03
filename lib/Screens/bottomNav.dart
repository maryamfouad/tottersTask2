import 'package:flutter/material.dart';
import 'package:totterstask/Screens/Home.dart';
import 'package:totterstask/Screens/orders.dart';
import 'package:totterstask/Screens/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int SelectedIndex = 0;
  List pages = [
    HomePage(),
    Search(),
    Orders(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: SelectedIndex,
        selectedItemColor: Color(0xfff2ba2e),
        selectedIconTheme: IconThemeData(
          size: 30,
          color: Color(0xfff2ba2e),
          opacity: 1,
        ),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 10),
        showUnselectedLabels: true,
        selectedLabelStyle:
            TextStyle(color: Color(0xfff2ba2e), fontWeight: FontWeight.bold),
        unselectedIconTheme:
            IconThemeData(size: 20, color: Colors.grey, opacity: 0.9),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "رئيسية"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "بحث"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
              ),
              label: "طلبات"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.delivery_dining,
              ),
              label: "مندوب"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "حساب"),
        ],
        onTap: (index) {
          setState(() {
            SelectedIndex = index;
          });
        },
      ),
      body: pages[SelectedIndex],
    );
  }
}
