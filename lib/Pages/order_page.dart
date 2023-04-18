import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/drinks.dart';
import '../Models/shop.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key, required this.drink});
  final Drink drink;

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  //customizeSweetness

  double sweetValue= 0.5;
  void customizeSweetness(double newValue
  ) {
   setState(() {
     sweetValue = newValue;
   });
  }

//customizeIce
  double iceValue= 0.5;
  void customizeIce(double newValue
  ) {
   setState(() {
     iceValue = newValue;
   });
  }

//customizePearls
  double pearlsValue= 0.5;
  void customizePearls(double newValue
  ) {
   setState(() {
     pearlsValue = newValue;
   });
  }

  // add to cart
  void addToCart() {
    Provider.of<BubbleTeaShop>(context, listen: false).addToCart(widget.drink);

    // direct user back to shop page
    Navigator.pop(context);

    // let user know what happend
     showDialog(context: context, builder: (context) => AlertDialog(
       title: const Text("Added to cart"),
       content: const Text("Your drink has been added to your cart"),
       actions: [
         TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK"))
       ],
     ));
  }
                

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drink.name),
      ),
      body: Column(
        children: [
          //drink image
         
            
        Image.asset(widget.drink.imagePath),
            
        

          //customize drink
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                //sweetnes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width: 100, child: const Text("Sweetness")),
                    Expanded(
                      child: Slider(
                        value: sweetValue,
                        label: sweetValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeSweetness(value),
                      ),
                    ),
                  ],
                ),
          
                //ice
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width:100,child: const Text("Ice")),
                    Expanded(
                      child: Slider(
                        value: iceValue,
                        label: iceValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeIce(value),
                      ),
                    ),
                  ],
                ),
          
                //pearls
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width:100,child: const Text("Pearls")),
                    Expanded(
                      child: Slider(
                        value: pearlsValue,
                        label: pearlsValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizePearls(value),
                      ),
                    ),
                  ],
                ),

                
              ],
            ),
          ),

          //add to cart button
          MaterialButton(onPressed: addToCart , child: const Text("Add to Cart",style: TextStyle(color: Colors.white),),color: Colors.brown,),
        ],
      ),
      backgroundColor: Colors.brown[200],
    );
  }
}