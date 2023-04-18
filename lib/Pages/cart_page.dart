import 'package:bubble_tea/Models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/dink_tile.dart';
import '../Models/drinks.dart';

class CartPage extends StatefulWidget {
const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

void removeFromCart(Drink drink){
  Provider.of<BubbleTeaShop>(context, listen: false ).removeFromCart(drink);

}

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(builder: (context ,value, child) =>SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
      
          //heading
          const Text("Cart", style: TextStyle(fontSize: 20),),
      
          //list of drinks in cart
          Expanded(child: ListView.builder(
            itemCount: value.cart.length,
            itemBuilder: (context, index) {
              //get drinik in cart first
              Drink drink = value.cart[index];

              // return as nice tittle
              return DrinkTile(drink: drink, onTap: () => removeFromCart(drink), trailing: const Icon(Icons.delete),);
            },
          ),
              ),

              //pay button

              MaterialButton(onPressed: () {}, color: Colors.blue, textColor: Colors.white, child: const Text("Pay",style: TextStyle(color: Colors.white),),),


        ],),
      ),
    ),);
  }
}