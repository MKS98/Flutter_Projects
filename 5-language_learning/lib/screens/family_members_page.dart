import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:language_learning/components/list_item.dart';
import 'package:language_learning/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> FamilyMembers = const [
    Item(
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'assets/sounds/family_members/daughter.wav',
      jpName: 'musume',
      enName: 'daughter',
    ),
    Item(
      image: 'assets/images/family_members/family_father.png',
      sound: 'assets/sounds/family_members/father.wav',
      jpName: 'chichi',
      enName: 'father',
    ),
    Item(
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'assets/sounds/family_members/grand father.wav',
      jpName: 'sofu',
      enName: 'grand father',
    ),
    Item(
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'assets/sounds/family_members/grand mother.wav',
      jpName: '	sobo',
      enName: 'grand mother',
    ),
    Item(
      image: 'assets/images/family_members/family_mother.png',
      sound: 'assets/sounds/family_members/mother.wav',
      jpName: 'haha',
      enName: 'mother',
    ),
    Item(
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'assets/sounds/family_members/older bother.wav',
      jpName: 'ani',
      enName: 'older brother',
    ),
    Item(
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'assets/sounds/family_members/older sister.wav',
      jpName: 'ane',
      enName: 'older sister',
    ),
    Item(
      image: 'assets/images/family_members/family_son.png',
      sound: 'assets/sounds/family_members/son.wav',
      jpName: 'musuko',
      enName: 'son',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'assets/sounds/family_members/younger brohter.wav',
      jpName: 'otouto',
      enName: 'younger brother',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'assets/sounds/family_members/younger sister.wav',
      jpName: 'imouto',
      enName: 'younger sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF100102),
        title: Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: FamilyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: FamilyMembers[index],
            color: Color(0xFFFC8B5E),
          );
        },
      ),
    );
  }
}
