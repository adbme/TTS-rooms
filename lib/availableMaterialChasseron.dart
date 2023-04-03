import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:ttsrooms/pleiades.dart';

void main() {
  runApp(PleiadesMaterial());
}

class PleiadesMaterial extends StatelessWidget {
  const PleiadesMaterial({Key? key}) : super(key: key);

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
          'Inventaire',
          style: TextStyle(fontSize: 50),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF212529),
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pleiades()),
              );
            },
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            BabylonJSViewer(src: ""),
            Positioned(
              bottom: 50,
              right: 50,
              child: ElevatedButton(
                onPressed: () {



                },
                child: Text('Utiliser'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
