import 'package:de_num42_sharing/imprint.dart';
import 'package:de_num42_sharing/dataProtection.dart';
import 'package:de_num42_sharing/main.dart';
import 'package:de_num42_sharing/principles.dart';
import 'package:de_num42_sharing/terms.dart';
import 'package:de_num42_sharing/widget/itemCard.dart';
import 'package:de_num42_sharing/widget/topBar.dart';
import 'package:flutter/material.dart';
import 'package:de_num42_sharing/register.dart';
import 'package:de_num42_sharing/login.dart';
import 'package:sizer/sizer.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;
  var email = "eerb@num42.de";
  var profileName = 'Emanuel Erben';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(context,false, false),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    '$profileName',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 5.h,
                    ),
                  ),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: 2.h,
                    ),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  ItemCard("",
                      category: 2),
                  ItemCard("Hamsterrad",
                  description: "Für den kleinen und großen Hamster. Max. 2Kg, schafft bis zu 200 U/min. Wenn man einen Generator anschließt kann man sein Handy laden. Viel Spaß.",),
                ],
              )),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Center(
          child: Align(
            alignment: Alignment.center,
            child: Wrap(
              children: [
                TextButton(
                  onPressed: () {
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
                  onPressed: () {
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
                  onPressed: () {
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
                  onPressed: () {
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
        ),
      ],
    );
  }
}
