
import 'package:flutter/material.dart';

import 'drinks.dart';

class BubbleTeaShop extends ChangeNotifier {  

  //list of drinks
  final List<Drink> _shop = [
Drink(
      name: "GreenDragon",
      price: "18",
      imagePath: "lib/Images/buble_image.png",
    ),
  ];

  //list of drinks in user cart
  final List<Drink> _cart = [];

  //get drinks for sale
  List<Drink> get shop => _shop;
  
  //get user cart
  List<Drink> get cart => _cart;
  
  //add drink to cart
  void addToCart(Drink drink) {
    _cart.add(drink);
    notifyListeners();
  }

  //remove drink from cart
  void removeFromCart(Drink drink) {
    _cart.remove(drink);
    notifyListeners();
  }
}