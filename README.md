# ttsrooms

TTS rooms project mobile

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.








import 'package:flutter/material.dart';


// Le programme va s'exécuter ici
void main() {

// Run l'application
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: const MyHomePage(title: 'Flutter Demo Home Page'),
);
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({super.key, required this.title});

final String title;

@override
State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int _counter = 0;

void _incrementCounter() {
setState(() {});
}

@override
Widget build(BuildContext context) {
return Scaffold(
// Header
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
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[],
),
),
);
}
}
}




















import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: MyHomePage(),
);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
String? dropdownvalue = 'Pomme';

var items = [
'Pomme',
'Banane',
'Fraise',
'Orange',
'abricot',
'Melon'
];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("DropdownButton"),
),
body: Container(
color: Colors.cyan,
child: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
DropdownButton(
value: dropdownvalue,
icon: Icon(Icons.keyboard_arrow_down),
items: items.map((items) {
return DropdownMenuItem(value: items, child: Text(items));
}).toList(),
onChanged: (String? newValue) {
setState(() {
dropdownvalue = newValue;
});
},
),
],
),
),
),
);
}
}

































AppBar(
title: Text("Popup Menu on AppBar"),
backgroundColor: Colors.redAccent,
actions: [

        PopupMenuButton(
          // add icon, by default "3 dot" icon
          // icon: Icon(Icons.book)
          itemBuilder: (context){
            return [
                  PopupMenuItem<int>(
                      value: 0,
                      child: Text("My Account"),
                  ),

                  PopupMenuItem<int>(
                      value: 1,
                      child: Text("Settings"),
                  ),

                  PopupMenuItem<int>(
                      value: 2,
                      child: Text("Logout"),
                  ),
              ];
          },
          onSelected:(value){
            if(value == 0){
                print("My account menu is selected.");
            }else if(value == 1){
                print("Settings menu is selected.");
            }else if(value == 2){
                print("Logout menu is selected.");
            }
          }
        ),

],
)






































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
                    child: Text("à propos"),
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
'TTS ROOMS',
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
