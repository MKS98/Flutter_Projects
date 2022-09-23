import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  HelloWorldApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        appBar: AppBar(
          title: Text('Chopper'),
        ),
        body: Row(children: [
          Container(
            height: 60,
            width: 100,
            color: Color.fromARGB(255, 156, 51, 182),
            child: Center(
              child: Text('Chopper'),
            ),
          ),
          Container(
            height: 60,
            width: 100,
            color: Color.fromARGB(255, 19, 192, 169),
            child: Center(
              child: Text('Chopper'),
            ),
          ),
        ]),
      ),
    );
  }
}
