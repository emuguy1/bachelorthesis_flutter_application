import 'package:de_num42_sharing/imprint.dart';
import 'package:de_num42_sharing/dataProtection.dart';
import 'package:de_num42_sharing/main.dart';
import 'package:de_num42_sharing/principles.dart';
import 'package:de_num42_sharing/profile.dart';
import 'package:de_num42_sharing/terms.dart';
import 'package:de_num42_sharing/widget/topBar.dart';
import 'package:flutter/material.dart';
import 'package:de_num42_sharing/register.dart';
import 'package:email_validator/email_validator.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(context,false,false),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Einloggen',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
            ),
            SizedBox(
              height: 30.sp,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    width: 70.w,
                    margin: EdgeInsets.fromLTRB(15.w, 2.h, 15.w, 0.h),
                    child: TextFormField(
                      validator: (value) => EmailValidator.validate(value!)
                          ? null
                          : "Please enter a valid email",
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 70.w,
                    margin: EdgeInsets.fromLTRB(15.w, 2.h, 15.w, 0.h),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //TODO: Validierung und Anmeldung für jetzt erstmal überleitung
                      if (_formKey.currentState!.validate()) {}
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 2.h),
                      primary: Color.fromRGBO(21, 128, 61, 1),
                    ),
                    child:  Text(
                      'Einloggen',
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
      persistentFooterButtons: [
        Center(
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
        ),
      ],
    );
  }
}
