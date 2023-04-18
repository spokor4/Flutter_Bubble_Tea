import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {

  final drink;
  final Widget trailing;
  
 void Function()? onTap;
 DrinkTile({super.key, required this.drink,required this.onTap, required this.trailing  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10), 
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white, boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 5),
          )
        ]),
        child: ListTile(
                    title: Text(drink.name),
                    subtitle: Text(drink.price.toString()),
                    leading: Image.asset(drink.imagePath),
                    trailing: trailing,),
                    
                  ),
    );
    
  }
}