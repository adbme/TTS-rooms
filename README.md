# ![tts logo](https://user-images.githubusercontent.com/98839796/225055945-ebfe1a25-6cbf-45ca-a17f-f140cb37ad11.jpg) TTS-rooms


![tts](https://user-images.githubusercontent.com/98839796/225056344-a8877034-c4c7-4ab7-b63b-51cfe600eba0.png)

``` dart
import 'package:flutter/material.dart';

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
          backgroundColor: Color(0xFF212529),
          leading: Container(
            padding: EdgeInsets.all(8.0),
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
                    child: Text("Lien 1"),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text("Lien 2"),
                  ),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Text("Lien 3"),
                  ),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  print("Lien 1");
                } else if (value == 1) {
                  print("Lien 2");
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
                  'TTS rooms',
                  style: TextStyle(
                      color: Color(0xFF212529),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(fontSize: 20,
                    color: Color(0xFFDAC036),),

                )),
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
                      content: const Text("Demandez à l'admin de vous refournir votre mot de passe"),
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
              child: const Text('Forgot Password',
              ),
            ),

            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              children: <Widget>[

              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
```
