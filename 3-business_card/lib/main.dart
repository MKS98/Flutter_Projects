import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 65, 16, 22),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                radius: 115,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('images/luffy1.jpg'),
                ),
              ),
              Text(
                'Monkey D luffy',
                style: TextStyle(
                    color: Colors.white, fontSize: 32, fontFamily: 'Pacifico'),
              ),
              Text(
                'kaizoku-Ō ni naru otoko da!',
                style: TextStyle(
                  color: Color(0xFF6c8090),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Color(0xFF6c8090),
                thickness: 2,
                indent: 60,
                endIndent: 60,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Icon(
                    Icons.bolt,
                    size: 28,
                    color: Color(0xFF2B475E),
                  ),
                  title: Text(
                    'Gumu Gumu no pistoleeeeeee!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),   // same as padding bs de mn gwa padding mn bara
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: 65,
                  child: Row(
                    children: [
                      // Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Icon(
                          Icons.bolt,
                          size: 28,
                          color: Color(0xFF2B475E),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          'Gumu Gumu no Bazoookaaaaa!',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: 65,
                  child: Row(
                    children: [
                      // Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.attach_money,
                          size: 28,
                          color: Color(0xFF2B475E),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          '3, 000, 000, 000 berries',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
