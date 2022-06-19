import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:de_num42_sharing/widget/topBar.dart';
import 'package:de_num42_sharing/widget/topBar2.dart';
import 'package:flutter/material.dart';

class NoConnectionPage extends StatefulWidget {
  const NoConnectionPage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<NoConnectionPage> createState() => _NoConnectionPageState();
}

class _NoConnectionPageState extends State<NoConnectionPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(hasBackArrow: false),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Es konnte keine Verbindung hergestellt werden."),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: Text(
                      "Stellen sie sicher, dass sie eine Internetverbindung haben und versuchen sie es erneut.")),
              TextButton(
                child: Text("Neu versuchen"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        PersistentFooter(),
      ],
    );
  }
}
