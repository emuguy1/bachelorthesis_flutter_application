import 'package:de_num42_sharing/imprint.dart';
import 'package:de_num42_sharing/dataProtection.dart';
import 'package:de_num42_sharing/main.dart';
import 'package:de_num42_sharing/principles.dart';
import 'package:de_num42_sharing/terms.dart';
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '$profileName',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
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
