import 'package:flutter/material.dart';
import 'package:de_num42_sharing/main.dart';
import 'package:de_num42_sharing/register.dart';
import 'package:de_num42_sharing/login.dart';
import 'package:google_fonts/google_fonts.dart';

import '../conversations.dart';
import '../profile.dart';
import '../util/GraphQLConfiguration.dart';


class TopBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget child;
  final bool hasBackArrow;

  TopBar({Key? key, this.child = const Center(), this.hasBackArrow=false}) : super(key: key);

  _TopBar createState() => _TopBar();

  @override
  Size get preferredSize => new Size.fromHeight(55);
}

class _TopBar extends State<TopBar>{
  @override
  PreferredSizeWidget build(BuildContext context){
    return AppBar(
      automaticallyImplyLeading: widget.hasBackArrow,
      centerTitle: widget.hasBackArrow,
      title: TextButton(
        child: Text("Sharing.",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            )),
        onPressed: () {
          if(!isLoggedIn){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(title: 'SHARING.'),
              ),
            );
          }
          else{
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          }
        },
      ),
      actions: [
          if(!isLoggedIn)
          (Container(
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
          )),
        if (!isLoggedIn)
          (Container(
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
          )),
        if (isLoggedIn && !widget.hasBackArrow)
          (Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: TextButton(
              child: Text("Nachrichten"),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Color.fromRGBO(220, 252, 231, 1),
                backgroundColor: Color.fromRGBO(21, 128, 61, 1),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConversationsPage(),
                  ),
                );
              },
            ),
          )),
        if (isLoggedIn && !widget.hasBackArrow)
          (Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: TextButton(
              child: Text("Ausloggen"),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Color.fromRGBO(220, 252, 231, 1),
                backgroundColor: Color.fromRGBO(21, 128, 61, 1),
              ),
              onPressed: () {
                isLoggedIn = false;
                box1.clear();
                GraphQLConfiguration.removeToken();
                graphQLConfig.deleteToken();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(title: "Sharing."),
                  ),
                );
              },
            ),
          )),
      ],
    );
  }
}