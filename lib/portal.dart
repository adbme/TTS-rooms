import 'package:flutter/material.dart';
import 'package:ttsrooms/about.dart';
import 'package:ttsrooms/tuto.dart';

import 'main.dart';

class portal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF212529),
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/logotts.jpg'),
        ),
        title: Text("Rooms"),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.menu),
            itemBuilder: (context) {
              return [

                PopupMenuItem<int>(
                  value: 0,
                  child: Row(
                    children: [
                      Icon(Icons.question_mark_sharp, color: Color(0xFFDAC036)),
                      SizedBox(width: 10),
                      Text('About'),
                    ],
                  ),
                ),

                PopupMenuItem<int>(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.videocam_outlined, color: Color(0xFFDAC036)),
                      SizedBox(width: 10),
                      Text('Tuto'),
                    ],
                  ),
                ),

                PopupMenuItem<int>(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back, color: Color(0xFFDAC036)),
                      SizedBox(width: 10),
                      Text('Return Log in'),
                    ],
                  ),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  AboutUsPage()));

              } else if (value == 1) {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  VideoPlayerApp()));
              } else if (value == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.table_restaurant_outlined, color: Colors.black, size: 34.0),
              label: Text('DISPOSITION', style: TextStyle(color: Colors.black, fontSize: 24.0)),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFDAC036),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                minimumSize: Size(300, 150),
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.rule, color: Colors.black, size: 34.0),
              label: Text('RÉSERVATION', style: TextStyle(color: Colors.black, fontSize: 24.0)),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFDAC036),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                minimumSize: Size(300, 150),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
