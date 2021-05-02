import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';
import 'package:whatsapp_clone/screens/individual_chat.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key key, this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndividualChat(chatModel: chatModel),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Icon(Icons.person),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text("23123123"),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 7),
                Text("hey there how are you"),
              ],
            ),
            trailing: Text("10 30"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 80),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
