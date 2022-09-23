import 'package:flutter/material.dart';
import 'package:language_learning/screens/colors_page.dart';
import 'package:language_learning/screens/family_members_page.dart';
import 'package:language_learning/screens/numbers_page.dart';
import 'package:language_learning/screens/phrases_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3FA),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xFF100102),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            color: Color(0xFFEA592A),
            text: 'Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersPage();
              }));
            },
            color: Color(0xFFFC8B5E),
            text: 'Family Members',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            color: Color(0xFFC0587E),
            text: 'Colors',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            color: Color(0xFF4B1E19),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
