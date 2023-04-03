import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:ttsrooms/test.dart';

import 'TTS-rooms.dart';


void main() {
  runApp(pleiades());
}

class pleiades extends StatelessWidget {
  const pleiades({Key? key}) : super(key: key);

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
          'Pleiades',
          style: TextStyle(fontSize: 50),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF212529),
        leading: Container(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.yellow,
              size: 40, // taille de l'icône
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

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF3D3F42),

              borderRadius: BorderRadius.circular(0),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: DropdownButton(
                    icon: SizedBox(
                      width: 30,
                      height: 30,
                      child: Center(),
                    ),
                    iconSize: 30,
                    underline: SizedBox(),
                    items: [
                      DropdownMenuItem(
                        child: Text('chaise       : 10', style: TextStyle(fontSize: 30),),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text('table          : 4', style: TextStyle(fontSize: 30)),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text('mini table : 1', style: TextStyle(fontSize: 30)),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text('écran         : 1', style: TextStyle(fontSize: 30)),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text('hibou         : 1', style: TextStyle(fontSize: 30)),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Text("VIEW ALL"),
                        value: 4,
                      ),
                    ],
                    onChanged: (value) {
                      // Vérifier si la valeur sélectionnée est 4 pour naviguer vers la nouvelle page
                      if (value == 4) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => about()),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: BabylonJSViewer(src: "assets/salles_glb/pleiades.glb"),

    );
  }
}
