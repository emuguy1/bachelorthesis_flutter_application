import 'dataProtection.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'package:email_validator/email_validator.dart';
import 'package:sizer/sizer.dart';
import 'login.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class ImprintPage extends StatefulWidget {
  const ImprintPage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<ImprintPage> createState() => _ImprintPageState();
}

class _ImprintPageState extends State<ImprintPage> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextButton(
          child: Text(
            'SHARING.',
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
        child: Container(
          margin: EdgeInsets.symmetric(vertical:5.w,horizontal:10.h),
          child: HtmlWidget(
              '<div>'
                  '<h1>Impressum</h1>'
                  '<p><strong>Number42 GmbH</strong><br>Franz-Mayer-Straße 1<br>93053 Regensburg<br>Germany</p>'
              '<p>E-Mail:&nbsp;info@num42.de<br>Tel.&nbsp'
              '+49(0)941 / 20 00 08 70</p>'
              '<p>Geschäftsführer: Daniel Dengler<br>Handelsregister-Gericht: Amtsgericht Regensburg<br>Handelsregister-Nr.: HRB'
              '16147<br>USt-IdNr. DE 313 579 989</p>'
              '<p>Inhaltlich verantwortlich: Daniel Dengler</p>'
              '</div>',
            factoryBuilder: () => MyWidgetFactory(),),
        ),
      ),
    );
  }
}
