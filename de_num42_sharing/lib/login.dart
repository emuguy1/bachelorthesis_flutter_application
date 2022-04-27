import 'package:de_num42_sharing/main.dart';
import 'package:flutter/material.dart';


class LoginRoute extends StatelessWidget {
  const LoginRoute({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Route'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context) => MyApp()));
              },
            child: const Text('Go back!'))
      )
    );
  }
}