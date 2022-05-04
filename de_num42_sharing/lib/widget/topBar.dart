import 'package:flutter/material.dart';
import 'package:de_num42_sharing/main.dart';
import 'package:de_num42_sharing/register.dart';
import 'package:de_num42_sharing/login.dart';

PreferredSizeWidget topBar(BuildContext context, bool isLoggedIn, bool hasBackArrow, [dynamic otherData]) {
  return AppBar(
    automaticallyImplyLeading: hasBackArrow,
    title: TextButton(
      child: Text(
        "Sharing.",
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
  );
}