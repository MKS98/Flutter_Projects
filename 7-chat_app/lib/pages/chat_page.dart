import 'package:chat_app/constants.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widgets/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  static String id =
      'ChatPage'; // static to access it directly from class not from object

  CollectionReference message =
      FirebaseFirestore.instance.collection(KMessagesCollection);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                kLogo,
                height: 50,
              ),
              Text('Chat')
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, int) {
                  return chatBubble();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                onSubmitted: (data) async {
                  await message.add({'message': data});
                  controller.clear();
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                  hintText: 'Send message',
                  suffixIcon: Icon(
                    Icons.send,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
