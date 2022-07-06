import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nav_bar/screen/category.dart';
import 'package:nav_bar/screen/home.dart';
import 'package:nav_bar/screen/product.dart';
import 'package:nav_bar/screen/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  List<Widget> pages = [
    Home(),
    Product(),
    Category(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        fixedColor: Color(0xff06283D),
        showUnselectedLabels: true,
        selectedFontSize: 18,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor:
                currentIndex == 0 ? Color(0xff488FB1) : Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: "Product",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
