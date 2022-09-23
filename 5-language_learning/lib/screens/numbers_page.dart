import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:language_learning/components/list_item.dart';
import 'package:language_learning/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'yon, shi',
      enName: 'four',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'nana, shichi',
      enName: 'seven',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyuu, ku',
      enName: 'nine',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'juu',
      enName: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF100102),
        title: Text('Numbers'),
      ),
      //* listview widget to make page scrollable, can iterate and loop through list of items
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: Color(0xFFEA592A),
          );
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(Item(number: numbers[i], color: Color(0xFFEA592A),));
  //   }
  //   return itemsList;
  // }
}
