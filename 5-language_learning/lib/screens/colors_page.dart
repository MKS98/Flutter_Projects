import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:language_learning/components/list_item.dart';
import 'package:language_learning/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> Colors1 = const [
    Item(
      image: 'assets/images/colors/color_black.png',
      sound: 'assets/sounds/colors/black.wav',
      jpName: 'burakku',
      enName: 'black',
    ),
    Item(
      image: 'assets/images/colors/color_brown.png',
      sound: 'assets/sounds/colors/brown.wav',
      jpName: 'chairo',
      enName: 'brown',
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'assets/sounds/colors/dusty yellow.wav',
      jpName: 'himawariiro',
      enName: 'dusty yellow',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      sound: 'assets/sounds/colors/gray.wav',
      jpName: 'gure-',
      enName: 'grey',
    ),
    Item(
      image: 'assets/images/colors/color_green.png',
      sound: 'assets/sounds/colors/green.wav',
      jpName: 'midori',
      enName: 'green',
    ),
    Item(
      image: 'assets/images/colors/color_red.png',
      sound: 'assets/sounds/colors/red.wav',
      jpName: 'aka',
      enName: 'red',
    ),
    Item(
      image: 'assets/images/colors/color_white.png',
      sound: 'assets/sounds/colors/white.wav',
      jpName: 'shiro',
      enName: 'white',
    ),
    Item(
      image: 'assets/images/colors/yellow.png',
      sound: 'assets/sounds/colors/yellow.wav',
      jpName: 'kiiro',
      enName: 'yellow',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF100102),
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: Colors1.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: Colors1[index],
            color: Color(0xFFC0587E),
          );
        },
      ),
    );
  }
}
