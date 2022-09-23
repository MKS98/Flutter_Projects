import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:language_learning/components/list_item.dart';
import 'package:language_learning/models/item.dart';
import 'package:language_learning/models/phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrases> phrases = const [
    Phrases(
      sound: 'assets/sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka?',
      enName: 'are you coming?',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku wasurenaide kudasai',
      enName: 'don`t forget to sub',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka.',
      enName: 'how are you feeling?',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'i love programming',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      jpName: 'Namae wa nani?',
      enName: 'what is your name?',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no?',
      enName: 'where are you going?',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF100102),
        title: Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            phrase: phrases[index],
            color: Color(0xFF4B1E19),
          );
        },
      ),
    );
  }
}
