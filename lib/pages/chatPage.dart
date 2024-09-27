import 'package:e_commerce_ui_aplication1/widget/chat/chatAppBar.dart';
import 'package:e_commerce_ui_aplication1/widget/chat/chatWidget.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const ChatAppBar(),
        ChatWidget(),
        Container(
          height: 700,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
