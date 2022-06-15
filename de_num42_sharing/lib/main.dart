import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:de_num42_sharing/widget/topBar.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'register.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';

// https://github.com/flutter/flutter/issues/36126#issuecomment-596215587

final graphqlEndpoint = 'http://192.168.188.69:4000/graphql/graphiql';
final subscriptionEndpoint = 'ws://192.168.188.69:4000/subscriptions';

final _httpLink = HttpLink(
  'https://api.github.com/graphql/graphiql',
);

final _authLink = AuthLink(
  getToken: () async => 'Bearer dwa',
);

void main() async {
  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: HttpLink(graphqlEndpoint),
      cache: GraphQLCache(store: InMemoryStore()),
    ),
  );

  runApp(GraphQLProvider(
    client: client,
    child: MyApp(),
  ));
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
            textTheme: GoogleFonts.robotoTextTheme(
              Theme.of(context).textTheme,
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.green,
            ),
            primaryColor: Colors.white,
          ),
          home: MyHomePage(title: 'SHARING.'),
          builder: (BuildContext context, Widget? widget){
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
      appBar: topBar(context, false, false),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(10, 60, 10, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Query(
                  options: QueryOptions(
                    document: gql("""query {
  me {
    id
  }
}
"""),
                  ),
                  builder: (QueryResult result, {fetchMore, refetch}) {
                    if (result.hasException) {
                      if(result.exception?.graphqlErrors != null){
                        return Text(result.exception!.graphqlErrors.first.message.toString());
                      }else{
                        return Text(result.exception.toString());
                      }

                    }

                    if (result.isLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    final productList = result.data?['products']['edges'];
                    print(productList);

                    return Text("Something");
                  },
                ),
                if(box1.isNotEmpty && box1.get("login")!= null)Text(box1.get("login")),
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
                  margin: EdgeInsets.fromLTRB(3.w, 0.h, 3.w, 5.0),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                      fontSize: 8.sp,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Kreise sind unsere '),
                      TextSpan(
                        text: 'Gruppen',
                        style: TextStyle(
                            fontSize: 8.sp, fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                          text: ',mit einem wichtigen Unterschied zu vielen '
                              'anderen Plattformen. Jeder sollte nur in '
                              'Kreisen aus Persibnen sein, die sich '),
                      TextSpan(
                        text: 'regelmäßig treffen',
                        style: TextStyle(
                            fontSize: 8.sp, fontWeight: FontWeight.w900),
                      ),
                      TextSpan(text: '.'),
                    ],
                  )),
                ),
                Container(
                  width: 70.w,
                  margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 2.w),
                  child: SvgPicture.asset('assets/undraw_connection.svg'),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
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
                      fontSize: 8.sp,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'Verleihen erfolgt auch heute schon häufig in kleinen '),
                      TextSpan(
                        text: 'Kreisen',
                        style: TextStyle(
                            fontSize: 8.sp, fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                          text:
                              ' aus Freunden, Verwandten und Bekannten. Wir haben '),
                      TextSpan(
                        text:
                            'Vertrauen zu den Personen, die wir bereits kennen',
                        style: TextStyle(
                            fontSize: 8.sp, fontWeight: FontWeight.w900),
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
                        fontSize: 8.sp,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Verleihen macht Freude.',
                          style: TextStyle(
                              fontSize: 8.sp, fontWeight: FontWeight.w900),
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
