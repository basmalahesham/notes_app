import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/chat_app/models/message.dart';

import '../constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key, required this.message
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16,),
        /*height: 65,
        width: 150,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16,),*/
        padding: EdgeInsets.only(left: 16,right: 32,bottom: 32,top: 32,),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ChatBubbleForFriend extends StatelessWidget {
  const ChatBubbleForFriend({
    super.key, required this.message
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16,),
        /*height: 65,
        width: 150,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16,),*/
        padding: EdgeInsets.only(left: 16,right: 32,bottom: 32,top: 32,),
        decoration: BoxDecoration(
          color: Color(0xff006D84),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}