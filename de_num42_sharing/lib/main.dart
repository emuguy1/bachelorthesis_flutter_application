import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHARING - einfach Dinge teilen',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
        ),
        primaryColor: Colors.white,
      ),
      home: MyHomePage(title: 'SHARING.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,  required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child:OutlinedButton(
                style: TextButton.styleFrom(
                  primary: Color.fromRGBO(21, 128, 61, 1),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
                child: Text("Einloggen")),
          ),
         Container(
           margin: const EdgeInsets.fromLTRB(0, 5, 10, 5),
           child:TextButton(
             child: Text("Registrieren"),
             style: TextButton.styleFrom(
               padding: const EdgeInsets.all(16.0),
               primary: Color.fromRGBO(220, 252, 231, 1),
               backgroundColor: Color.fromRGBO(21, 128, 61, 1),
             ),
             onPressed: () {
               Navigator.push(context,MaterialPageRoute(builder:(context) => const LoginRoute()),
               );
             },
           ),
         ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Teilen macht',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            GradientText(
              'glücklich.',
              style: TextStyle( fontSize: 40.0, ),
              gradientType: GradientType.radial,
              radius: 2.5,
              colors: [ Color.fromRGBO(29, 78, 216, 1),
                Color.fromRGBO(126, 34, 206, 1),
                Color.fromRGBO(190, 24, 93, 1),
              ],
            ),
            Text('glücklich.'),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}