import 'package:bubble_tea/Pages/shop_page.dart';
import 'package:flutter/material.dart';
import '../Components/bottom_nav_bar_google.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//navigate bottom bar
int _selectedIndex=0;

void navigationBottomBar(int newIndex) {
setState(() {
  _selectedIndex = newIndex;
});
}

//pages to dispaly
List<Widget>  _pages =  const[

  //shop page
ShopPage(),

  //cart page
CartPage(),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[10],
      bottomNavigationBar:  BottomNavBar(onTabChange: (index) => navigationBottomBar(index),),
    );
  }
}