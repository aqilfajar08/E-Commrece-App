import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            // Burger
            Icons.sort,
            size: 30,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "StockL",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          // this one for make a space from your layout object
          const Spacer(),

          // the function from badge it's for add a notification on your cart icon when you see the result it will appear on the right top of the cart icon
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: const Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap:() {
                Navigator.pushNamed(context, '/chatPage');
              },
              child: const Icon(
                Icons.chat_outlined,
                size: 32,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
