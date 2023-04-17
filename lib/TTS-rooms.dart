import 'package:flutter/material.dart';
import 'package:ttsrooms/pleiades.dart';
import 'package:ttsrooms/portal.dart';
import 'package:ttsrooms/salles/argentine.dart';
import 'package:ttsrooms/salles/argentine_chamossaire.dart';
import 'package:ttsrooms/salles/chamossaire.dart';
import 'package:ttsrooms/salles/chasseron.dart';
import 'package:ttsrooms/salles/suchet.dart';
import 'package:ttsrooms/salles/wengen.dart';
import 'main.dart';

const List<String> list = <String>[
  'Pleiades',
  'Suchet',
  'Chasseron',
  'Argentine',
  'Chamossaire',
  'Wengen',
  'Arg + Chamo'
];


void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF212529),
          title: Text(
            "CHOOSE YOUR ROOM",
            textAlign: TextAlign.center,
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

                    context, MaterialPageRoute(builder: (context) =>  portal()));
                    print("home");
              },
            ),
          ),
        ),
        backgroundColor: const Color(0xFF282C31),
        body: const Center(
          child: CustomDropdownButton(),
        ),
      ),
    );
  }
}

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({Key? key}) : super(key: key);

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String dropdownValue = list.first;

  bool isDropdownOpen = false;

  void toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 200,
          height: 50,
          child: ElevatedButton(
            onPressed: toggleDropdown,
            child: Text(
              dropdownValue,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
            ),
          ),
        ),


        // if (dropdownValue == 'Monch')
        // print("dji"),



        if (isDropdownOpen)

          Container(
            
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              color: Colors.white,
            ),
            child: Column(
              children: list
                  .map(
                    (value) => SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      if (value == 'Pleiades') {
                        print("Pleiades");
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>  pleiades()));
                      }
                      else if (value == 'Suchet') {
                        print("Suchet");
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  suchet()));


                      }
                      else if (value == 'Chasseron') {
                        print("chasseron");
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  chasseron()));
                      }
                      else if (value == 'Argentine') {
                        print("argentine");
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  argentine()));
                      }
                      else if (value == 'Chamossaire') {
                        print("chamossaire");
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  chamossaire()));
                      }
                      else if (value == 'Wengen') {
                        print("wengen");
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  wengen()));
                      }
                      else if (value == 'Arg + Chamo') {
                        print("Argentine + Chamossaire");
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  argentine_chamossaire()));
                      }


                      setState(() {
                        dropdownValue = value;
                        isDropdownOpen = false;
                      });
                    },
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
          ),
      ],
    );
  }
}
