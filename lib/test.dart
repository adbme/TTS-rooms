import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';

import 'TTS-rooms.dart';


void main() => runApp(const about());

class about extends StatelessWidget {

  const about({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Container(
      width: double.infinity,
      height: double.infinity,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset('assets/images/test.png'),

      ),

    ),

    Container(
      width: double.infinity,
      height: double.infinity,
      child: FittedBox(

        fit: BoxFit.cover,
        child: Image.asset('assets/images/test.png'),
      ),
    ),

    Container(

      width: double.infinity,
      height: double.infinity,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset('assets/images/chasseronImage.png'),
      ),
    ),

    Container(
      width: double.infinity,
      height: double.infinity,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset('assets/images/logo.jpg'),
      ),
    ),

    Container(
      width: double.infinity,
      height: double.infinity,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset('assets/images/chasseronImage.png'),
      ),
    ),

    Container(
      width: double.infinity,
      height: double.infinity,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset('assets/images/chasseronImage.png'),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF212529),
        title: Text(
          'Pleiades',
          style: TextStyle(fontSize: 50),
        ),
        centerTitle: true,
        leading: Container(

          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.yellow,
            ),

            onPressed: () {
              Navigator.push(

                  context, MaterialPageRoute(builder: (context) => const DropdownButtonApp()));
              print("home");
            },
          ),
        ),
      ),

      body: _widgetOptions[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Room',
            backgroundColor: const Color(0xFF32954E),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_restaurant_rounded),
            label: 'Table',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_bar_rounded),
            label: 'Mini table',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chair_alt),
            label: 'Chair',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.desktop_mac_sharp),
            label: 'Screen',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speaker_phone_rounded),
            label: 'Hibou',
            backgroundColor: Colors.purple,
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
