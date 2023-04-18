import 'package:flutter/material.dart';
import 'package:ttsrooms/portal.dart';

class Tuto extends StatefulWidget {
  @override
  _TTSRoomsState createState() => _TTSRoomsState();
}

class _TTSRoomsState extends State<Tuto> {
  late String optionSelected;
  late String salleSelected;
  late String dispositionSelected;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tuto'),
          backgroundColor: const Color(0xFF212529),
          leading: Container(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => portal()),
                );
              },
              child: Image.asset('assets/images/logotts.jpg'),
            ),
          ),
        ),
        body: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              Icon(Icons.check_circle, color: Color(0xFFDAC036)),
              SizedBox(width: 20),
              Text(
                'Etapes TTS rooms :', // sous-titre
                style: TextStyle(fontSize: 30, color: Color(0xFFDAC036)),
              ),
            ],
          ),
          SizedBox(height: 50),
    Text(
    'Choisir votre option', // sous-titre
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 50),
    // image de 100% de largeur
    Image.asset(
    'assets/images/options.png',
    width: MediaQuery.of(context).size.width,
    ),
    SizedBox(height: 50),
    Text(
    'Choisir la salle', // sous-titre
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 50),
    // image de 100% de largeur
    Image.asset(
    'assets/images/salles.png',
    width: MediaQuery.of(context).size.width,
    ),
    SizedBox(height: 50),
    Text(
    'Lancer la disposition pour la visualiser', // sous-titre
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 50),
    Text(
    'Pour pouvoir visualiser votre disposition sélectionnez d\'abord le menu ci-dessous',
    style: TextStyle(fontSize: 16),
    ),
    SizedBox(height: 50),
    // image de 100% de largeur
    Image.asset(
    'assets/images/menu.png',
    width: MediaQuery.of(context).size.width,
    ),
    SizedBox(height: 50),
    Text(
    'Choisissez ensuite la disposition que vous voulez',
    style: TextStyle(fontSize: 16),
    ),
    SizedBox(height: 100),
    // image de 100% de largeur
    Image.asset(
    'assets/images/disposition.png',
    width: MediaQuery.of(context).size.width,
    ),
    SizedBox(height: 100),
    isPlaying
    ? Text(
    'Arrêter la disposition avec l\'icone pause, remettez la barre de la disposition au début et choisissez à nouveau une disposition',
    style: TextStyle(fontSize: 16),
    )
        : Text(
    'Lancez la avec l\'icone play ci-dessous',
    style: TextStyle(fontSize: 16),
    ),
    SizedBox(height: 100),
    // image de 100% de largeur
    Image.asset(
    'assets/images/play.png',
    width: MediaQuery.of(context).size.width,
    ),
    SizedBox(height: 100),

          Text(
              'Bravo ! Profitez de voir la disposition !', // sous-titre
              style: TextStyle(fontSize: 16)
          ),
          SizedBox(height: 100),
          Image.asset(
            'assets/images/bravo.png',
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(height: 100),
          Text(
              'Pour relancer une nouvelle suivez les étapes suivantes', // sous-titre
              style: TextStyle(fontSize: 16)
          ),
          SizedBox(height: 100),
          Text(
            'Voici une vidéo pour qui montre l’expliquation', // sous-titre
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
    SizedBox(height: 10),
    // Vidéo de 100% de largeur
    Container(
    width: MediaQuery.of(context).size.width,
    height: 200,
    decoration: BoxDecoration(
    color: Colors.grey[300],
    ),
    child: Center(
    child: Text(
    'vidéo tuto',
    style: TextStyle(fontSize: 16),
    ),
    ),
    ),
      ],
    ),
    ),
    );
  }
}