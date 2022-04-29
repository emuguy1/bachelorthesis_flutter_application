import 'register.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}
//TODO: Add an app bar globaly https://stackoverflow.com/questions/59528216/is-there-a-better-way-to-add-an-appbar-only-once-in-flutter-app-and-use-it-in-al

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
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
    });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _borrowedItems = [
    'Spiel',
    'Bücher',
    'Autoanhänger',
    'Hochdruckreiniger',
    'Beamer',
    'Drohne',
    'Teppichreiniger',
    'Bohrmaschiene',
    'Festbank',
    'Vertikutierer',
    'Fotokamera',
    'Dampfreiniger',
    'Schleifmaschiene',
    'Bohrhammer',
    'Kammeraobjektiv',
    'Stichsäge',
    'Gepäckbox',
    'Umgrabmaschiene'
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

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
        title: TextButton(
          child: Text(
            widget.title,
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w900,
                color: Colors.black),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(title: 'SHARING.'),
              ),
            );
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: OutlinedButton(
                style: TextButton.styleFrom(
                  primary: Color.fromRGBO(21, 128, 61, 1),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Text("Einloggen")),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: TextButton(
              child: Text("Registrieren"),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Color.fromRGBO(220, 252, 231, 1),
                backgroundColor: Color.fromRGBO(21, 128, 61, 1),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(title: 'SHARING.'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(10, 60, 10, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Teilen macht',
                  style: TextStyle(
                      overflow: TextOverflow.fade,
                      fontSize: 35.sp,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900),
                ),
                GradientText(
                  'glücklich.',
                  style: TextStyle(
                      fontSize: 35.sp,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900),
                  gradientType: GradientType.radial,
                  radius: 2.5,
                  colors: [
                    Color.fromRGBO(29, 78, 216, 1),
                    Color.fromRGBO(126, 34, 206, 1),
                    Color.fromRGBO(190, 24, 93, 1),
                  ],
                ),
                Container(
                  child: Text(
                    'Hier kannst Du deine Sachen einfach mit Bekannten teilen.',
                    style: TextStyle(
                      fontSize: 13.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                ),
                Text(
                  'Und behältst dabei den Überblick',
                  style: TextStyle(
                    fontSize: 13.sp,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: TextButton(
                    child: Text(
                      "Kostenlos Registrieren",
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.h),
                      primary: Color.fromRGBO(255, 255, 255, 1.0),
                      backgroundColor: Color.fromRGBO(120, 18, 165, 1.0),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const RegisterPage(title: 'SHARING.'),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'Kein Spam. Alle deine Daten sind jederzeit löschbar',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 10),
                  child: Text(
                    'Das leihen & verleihen Andere',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize:  35.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: ShaderMask(
                      shaderCallback: (Rect rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.purple],
                          stops: [
                            0.01,
                            1.0
                          ], // 10% purple, 80% transparent, 10% purple
                        ).createShader(rect);
                      },
                      blendMode: BlendMode.dstOut,
                      child: Wrap(
                        children: List.generate(
                          18,
                          (index) {
                            return Card(
                              color: Colors.white70,
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                padding: const EdgeInsets.all(10),
                                child: Text(_borrowedItems.elementAt(index)),
                              ),
                            );
                          },
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
