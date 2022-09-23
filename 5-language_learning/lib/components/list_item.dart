import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:language_learning/models/item.dart';
import 'package:just_audio/just_audio.dart';
import 'package:language_learning/models/phrases_item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.number, required this.color});
  final Item number; //! return object of model Item ==>  lib/models/item.dart
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xFFFFF6DC),
            child: Image.asset(
              number.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              //! sound player icon
              onPressed: () async {
                try {
                  var player = AudioPlayer(); //! audio player package
                  await player.setAsset(number.sound);
                  player.play();
                } catch (ex) {
                  print(ex);
                }
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.phrase, required this.color});
  final Phrases phrase;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () async {
                try {
                  var player = AudioPlayer();
                  await player.setAsset(phrase.sound);
                  player.play();
                } catch (ex) {
                  print(ex);
                }
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
