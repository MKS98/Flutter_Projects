import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class chatBubble extends StatelessWidget {
  const chatBubble({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          color: kPrimaryColor,
        ),
        child: Text("hey, wassap!",
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}
