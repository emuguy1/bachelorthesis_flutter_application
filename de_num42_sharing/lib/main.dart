import 'dart:io';

import 'package:de_num42_sharing/profile.dart';
import 'package:de_num42_sharing/util/CustomError.dart';
import 'package:de_num42_sharing/util/GraphQLConfiguration.dart';
import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:de_num42_sharing/widget/topBar2.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod/riverpod.dart';
import 'register.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

// https://github.com/flutter/flutter/issues/36126#issuecomment-596215587

var graphqlEndpoint = 'http://192.168.188.69:4000/graphql/graphiql';
final subscriptionEndpoint = 'ws://192.168.188.69:4000/subscriptions';





late Box box1;
late GraphQLConfiguration graphQLConfig;
late bool isLoggedIn;
late Database daba;

void createOpenBox()async{
  box1 = await Hive.openBox('de.num42.sharing');
  // when user re-visit app, we will get data saved in local database
}
void main() async {
  sqfliteFfiInit();
  await Hive.initFlutter();
  box1 = await Hive.openBox('de.num42.sharing');

  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  final database = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);

  await database.execute('CREATE TABLE items(itemId TEXT PRIMARY KEY, name TEXT, description TEXT)',);

  daba = database;

  if(box1.get("login") != null){
    graphqlEndpoint= 'http://192.168.188.69:4000/graphql/graphiql?authorization='+box1.get("login")+"&";
    GraphQLConfiguration.setToken(box1.get("login"));
    isLoggedIn=true;
  }else{
    isLoggedIn=false;
  }

  graphQLConfig = new GraphQLConfiguration();
  if(box1.get("login") != null){
    graphQLConfig.addToken(box1.get("login"));
  }


  runApp(
      GraphQLProvider(
          client: graphQLConfig.client,
          child: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  final loggedIn= box1.get("login")!=null;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'SHARING - einfach Dinge teilen',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.green,
            ),
            textTheme: GoogleFonts.robotoTextTheme(
              Theme.of(context).textTheme,
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.green,
            ),
            primaryColor: Colors.white,
          ),
          home: !loggedIn ? MyHomePage(title: 'SHARING.') : ProfilePage(),
          builder: (BuildContext context, Widget? widget){
            isLoggedIn= box1.get("login")!=null;
            ErrorWidget.builder = (FlutterErrorDetails errorDetails){
              return CustomError(errorDetails: errorDetails);
            };
            return widget!;
          },
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

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: TopBar(hasBackArrow: false),
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
                    color: Colors.yellow,
                    fontSize: 15.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 10),
                  child: Text(
                    'Das leihen & verleihen Andere',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35.sp,
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
                        direction: Axis.horizontal,
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
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                  child: Text(
                    'Kreise machen Verleihen einfach, für ALLE.',
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(3.w, 0.h, 3.w, 0),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Kreise sind unsere '),
                      TextSpan(
                        text: 'Gruppen',
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                          text: ',mit einem wichtigen Unterschied zu vielen '
                              'anderen Plattformen. Jeder sollte nur in '
                              'Kreisen aus Persibnen sein, die sich '),
                      TextSpan(
                        text: 'regelmäßig treffen',
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w900),
                      ),
                      TextSpan(text: '.'),
                    ],
                  )),
                ),
                Container(
                  width: 70.w,
                  height: 300,
                  child: SvgPicture.asset('assets/undraw_connection.svg'),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                  child: Text(
                    'Wir verleihen bereits an Personen, die wir kennen..',
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(3.w, 0.h, 3.w, 5.0),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'Verleihen erfolgt auch heute schon häufig in kleinen '),
                      TextSpan(
                        text: 'Kreisen',
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                          text:
                              ' aus Freunden, Verwandten und Bekannten. Wir haben '),
                      TextSpan(
                        text:
                            'Vertrauen zu den Personen, die wir bereits kennen',
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w900),
                      ),
                      TextSpan(text: ' und verleihen hier gerne Dinge.'),
                    ],
                  )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(3.w, 20.0, 3.w, 5.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Verleihen macht Freude.',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w900),
                        ),
                        TextSpan(
                            text: ' Verleihen gibt Gelegenheit zu kurzen '
                                'Gesprächen und erlaubt uns, anderen im direkten '
                                'Umfeld zu helfen. Warum versuchen viele Plattformen, '
                                'die wir finden konnten, das Verleihen unter Fremden '
                                'zu ermöglichen anstatt die riesige Macht der Freunde '
                                'zu nutzen? Wir wissen es nicht, aber wollen nicht '
                                'den gleichen Fehler machen.'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      persistentFooterButtons: [
        PersistentFooter(),
      ],
    );
  }
}
