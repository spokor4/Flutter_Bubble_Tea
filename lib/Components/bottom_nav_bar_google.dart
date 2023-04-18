import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// Here im using plugin google_nav_bar

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
        onTabChange: (value)=> onTabChange!(value), 
        //onTabChange is a function that takes an int as a parameter, we need to declare if we want to use it by "!"
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        color: Colors.grey[300],
        tabActiveBorder: Border.all(color: Colors.white, width: 2),
        gap: 8,
        tabs: const [
          //shop tab
    
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
    
          //cart tab
    
          GButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
