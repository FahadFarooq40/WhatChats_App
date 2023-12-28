import 'package:flutter/material.dart';
import 'package:whatchats_app/widgets/chat_view.dart';
import 'package:whatchats_app/widgets/my_message.dart';
import 'package:whatchats_app/widgets/sender_message.dart';

class ChatListWeb extends StatelessWidget {
  const ChatListWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessagesCart(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCart(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
