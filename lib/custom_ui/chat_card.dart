import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
      ),
      title: Text("+91919191991"),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          Text("hey there how are you"),
        ],
      ),
      trailing: Text("10 30"),
    );
  }
}
