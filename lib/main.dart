import 'package:flutter/material.dart';
import 'package:ttsrooms/test.dart';
import 'package:ttsrooms/tuto.dart';

import 'TTS-rooms.dart';
import 'about.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
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
                    child: Text("à propos"),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text("Tuto"),
                  ),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Text("Lien 3"),
                  ),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  AboutUsPage()));

                } else if (value == 1) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  VideoPlayerApp()));
                } else if (value == 2) {
                  print("Lien 3");
                }
              },
            ),
          ],
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'TTS ROOMS',
              style: TextStyle(
                  color: Color(0xFF212529),
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'LOG IN',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFDAC036),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Password oublié"),
                    content: const Text(
                        "Demandez à l'admin de vous refournir votre mot de passe"),
                    actions: <Widget>[
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text(
              'Forgot Password',
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                if (nameController.text == '' &&
                    passwordController.text == '') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DropdownButtonApp()));
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Login Erreur"),
                        content: const Text("Le mot de passe ou username est faux"),
                        actions: <Widget>[
                          TextButton(
                            child: const Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                print(nameController.text);
                print(passwordController.text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
