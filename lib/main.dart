import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Models/shop.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => BubbleTeaShop(),
    builder: (context, child) =>  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
    ),);
  }
}