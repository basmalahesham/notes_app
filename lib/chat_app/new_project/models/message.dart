import 'package:flutter_udemy_tharwat2/chat_app/new_project/constants.dart';

class Message {
  final String message;
  final String id;

  Message(
    this.message,
    this.id,
  );

  factory Message.fromJson(jsonData) {
    return Message(
      jsonData[kMessage],
      jsonData[kId],
    );
  }
}
