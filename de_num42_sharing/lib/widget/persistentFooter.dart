import 'package:flutter/material.dart';
import 'package:de_num42_sharing/main.dart';
import 'package:de_num42_sharing/register.dart';
import 'package:de_num42_sharing/login.dart';
import 'package:de_num42_sharing/imprint.dart';
import 'package:de_num42_sharing/dataProtection.dart';
import 'package:de_num42_sharing/principles.dart';
import 'package:de_num42_sharing/terms.dart';


class PersistentFooter extends StatefulWidget implements PreferredSizeWidget {
  final Widget child;
  final bool show_short;
  //TODO: Build, that when logged in only shortend version shown

  PersistentFooter({Key? key, this.child = const Center(), this.show_short=false}) : super(key: key);

  _PersistentFooter createState() => _PersistentFooter();

  @override
  Size get preferredSize => new Size.fromHeight(55);
}

class _PersistentFooter extends State<PersistentFooter>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Align(
        alignment: Alignment.center,
        child:Wrap(
          children: [
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImprintPage(),
                  ),
                );
              },
              child: Text(
                'Impressum',
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataProtectionPage(),
                  ),
                );
              },
              child: Text(
                'Datenschutzerklärung',
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsPage(),
                  ),
                );
              },
              child: Text(
                'Nutzungsbedingungen',
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrinciplesPage(),
                  ),
                );
              },
              child: Text(
                'Grundsätze',
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}