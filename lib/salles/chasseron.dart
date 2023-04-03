import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:ttsrooms/test.dart';

import '../TTS-rooms.dart';



void main() {
  runApp(chasseron());
}

class chasseron extends StatelessWidget {
  const chasseron({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chasseron',
          style: TextStyle(fontSize: 50),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF212529),
        leading: Container(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.yellow,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DropdownButtonApp()),
              );
              print("home");
            },
          ),
        ),
        toolbarHeight: 100, // Set the height here
      ),

      body: BabylonJSViewer(src: "assets/salles_glb/chaseron.glb"),
      backgroundColor: const Color(0xFF282C31),
    );
  }
}
