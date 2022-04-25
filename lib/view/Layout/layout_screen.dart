import 'package:flutter/material.dart';

import '../bag/home_screen.dart';
import '../favorites/home_screen.dart';
import '../home/home_screen.dart';
import '../profile/home_screen.dart';
import '../shop/home_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomNavItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      label: 'Shop',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bookmark_outline),
      label: 'Bag',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_outline),
      label: 'Favorites',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      label: 'Profile',
    ),
  ];
  List<Widget> screens = const [
    HomeScreen(),
    ShopScreen(),
    BagScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: bottomNavItems,
        ),
      ),
    );
  }
}
