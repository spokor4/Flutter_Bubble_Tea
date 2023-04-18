import 'package:bubble_tea/Models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/dink_tile.dart';
import '../Models/drinks.dart';
import 'order_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

// go to order page
void goToOrderPage(Drink drink) {
  // new page
Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage(drink: drink),),);

}


  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
      builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          // heading
          const Text("Bubble Tea Shop", style: TextStyle(fontSize: 20),),
          
          const SizedBox(height: 10,),

          //List of drinks for sale
          Expanded(child: ListView.builder(
            itemCount: value.shop.length,
            itemBuilder: (context, index) {
              
              // get individual drink from shop list
              Drink individualDrink = value.shop[index];

              // return that drink
              return DrinkTile(drink: individualDrink,onTap: () => goToOrderPage(individualDrink), trailing: const Icon(Icons.arrow_forward),
            );
            },
          ),
          ),
          
        ],
          
        ),
      ),
    )
    );
  }
}