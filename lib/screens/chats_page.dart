import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';

import '../custom_ui/chat_card.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  List<ChatModel> chats = [
    ChatModel(
      currentMessage: 'hey there',
      icon: Icon(Icons.group),
      isGroup: true,
      name: 'Flutter group',
      time: '11 12',
    ),
    ChatModel(
      currentMessage: 'hey shwetha',
      icon: Icon(Icons.person),
      isGroup: false,
      name: 'Shwetha',
      time: '4 30',
    ),
    ChatModel(
      currentMessage: 'hey amar',
      icon: Icon(Icons.person),
      isGroup: false,
      name: 'Amar',
      time: '10 09',
    ),
    ChatModel(
      currentMessage: 'hey there',
      icon: Icon(Icons.person),
      isGroup: false,
      name: 'Ram',
      time: '5 40',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        onPressed: () {},
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
