import 'package:flutter/material.dart';
import 'package:whatchats_app/screen/mobile_chats_screen.dart';
import 'package:whatchats_app/themes_color/themes_color.dart';
import 'package:whatchats_app/widgets/chat_view.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: chatView.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const MobileChatScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(
                      chatView[index]['name'].toString(),
                      style: const TextStyle(fontSize: 19),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        chatView[index]['message'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          chatView[index]['profilePic'].toString()),
                      radius: 25,
                    ),
                    trailing: Text(chatView[index]['time'].toString(),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey)),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 85,
              ),
            ],
          );
        },
      ),
    );
  }
}
