import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';

class IndividualChat extends StatefulWidget {
  const IndividualChat({Key key, this.chatModel}) : super(key: key);
  final ChatModel chatModel;
  @override
  _IndividualChatState createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                ),
              ),
            ],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name or number"),
            Text(
              "last seen on 10 30",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.videocam_rounded), onPressed: () {}),
          IconButton(icon: Icon(Icons.phone), onPressed: () {}),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("View contact"),
                value: "View contact",
              ),
              PopupMenuItem(
                child: Text("Media, links and docs"),
                value: "Media, links and docs",
              ),
              PopupMenuItem(
                child: Text("Search"),
                value: "Search",
              ),
              PopupMenuItem(
                child: Text("Mute notifications"),
                value: "Mute notifications",
              ),
              PopupMenuItem(
                child: Text("Wallpaper"),
                value: "Wallpaper",
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text("More"), Icon(Icons.arrow_forward_outlined)],
                ),
                value: "More",
              ),
            ];
          })
        ],
      ),
      body: Center(
        child: Text("chats here"),
      ),
    );
  }
}
