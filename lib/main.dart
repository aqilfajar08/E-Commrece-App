import 'package:e_commerce_ui_aplication1/pages/cartPage.dart';
import 'package:e_commerce_ui_aplication1/pages/chatPage.dart';
import 'package:e_commerce_ui_aplication1/pages/homePage.dart';
import 'package:e_commerce_ui_aplication1/pages/itemPage.dart';
import 'package:e_commerce_ui_aplication1/pages/profilePage.dart';
import 'package:e_commerce_ui_aplication1/widget/chat/chatDiscution.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        '/': (context) => Homepage(),
        '/cartPage': (context) => const CartPage(),
        '/itemPage': (context) => ItemPage(), 
        '/profilePage': (context) => ProfilePage(),
        '/chatPage': (context) => ChatPage(),
        '/chatDiscution': (context) => ChatDiscution(),
      },
    );
  }
}
