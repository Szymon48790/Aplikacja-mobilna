import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        tabBackgroundColor: Color(0xFFFC8721),
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Color(0xFF4C280A)),
        tabs: const [
          GButton(
            icon: Icons.coffee,
            text: 'Coffee',
          ),
          GButton(
            icon: Icons.restaurant_rounded,
            text: 'Sandwiches',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
