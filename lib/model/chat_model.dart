import 'package:flutter/material.dart';

class ChatModel {
  String name;
  Icon icon;
  bool isGroup;
  String time;
  String currentMessage;
  ChatModel({
    this.name,
    this.icon,
    this.isGroup,
    this.time,
    this.currentMessage,
  });
}
