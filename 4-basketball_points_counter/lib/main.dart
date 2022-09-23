import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounterApp());
}

class PointsCounterApp extends StatefulWidget {
  @override
  State<PointsCounterApp> createState() => _PointsCounterAppState();
}

class _PointsCounterAppState extends State<PointsCounterApp> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //* Team A
                Container(
                  //! container created to manage the height of a column inside a column
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        //? the team points counter itself took variable
                        '$TeamAPoints',
                        style: TextStyle(
                          fontSize: 160,
                        ),
                      ),
                      ElevatedButton(
                        //! creating bottun wedgit!
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        //! on press and setstate statefull widget
                        onPressed: () {
                          TeamAPoints++;
                          setState(() {});
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamAPoints = TeamAPoints + 2;
                          setState(() {});
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamAPoints = TeamAPoints + 3;
                          setState(() {});
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //* vertical Divider
                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Color.fromARGB(255, 187, 187, 187),
                    thickness: 1,
                  ),
                ),
                //* Team B
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$TeamBPoints',
                        style: TextStyle(
                          fontSize: 160,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamBPoints++;
                          setState(() {});
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamBPoints = TeamBPoints + 2;
                          setState(() {});
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamBPoints = TeamBPoints + 3;
                          setState(() {});
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //* Reset button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  TeamAPoints = 0;
                  TeamBPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
