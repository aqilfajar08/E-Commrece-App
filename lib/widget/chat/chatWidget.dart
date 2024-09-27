import 'package:e_commerce_ui_aplication1/widget/chat/chatDiscution.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
// import 'package:google_fonts/google_fonts.dart';

class ChatWidget extends StatelessWidget {
  ChatWidget({super.key});

  List<String> myProductName = [
    'Adidas',
    'Nike',
    'Puma',
  ];

  // List<String> myShopChatPreview = [
  //   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  //   'running model and good feels',
  //   'style model and expensive',
  //   'samba model good for teeneger',
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < myProductName.length; i++) ...[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/chatDiscution');
            },
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                    width: 70,
                    margin: const EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          AssetImage('asset/img/logo/${i + 1}.png'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsetsDirectional.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            myProductName[i],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.withOpacity(0.9),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "Today",
                          style: TextStyle(
                            color: Colors.grey.withOpacity(1.0),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        child: const badges.Badge(
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Colors.red,
                            padding: EdgeInsets.all(7),
                          ),
                          badgeContent: Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (i < myProductName.length - 1)
            const Divider(
              color: Colors.grey,
              thickness: 0.3,
              indent: 100,
            ),
        ],
      ],
    );
  }
}
