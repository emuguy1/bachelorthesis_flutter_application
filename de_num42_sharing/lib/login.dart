import 'package:de_num42_sharing/noConnection.dart';
import 'package:de_num42_sharing/profile.dart';
import 'package:de_num42_sharing/util/GraphQLConfiguration.dart';
import 'package:de_num42_sharing/util/GraphQLQueries.dart';
import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:de_num42_sharing/widget/topBar.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sizer/sizer.dart';

import 'main.dart';
import 'widget/topBar2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var showErrorMessage = false;
  setErrorMessage(){
    setState(() {
      showErrorMessage = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(hasBackArrow: false),
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
                      controller: emailController,
                      decoration: InputDecoration(
                        focusColor: Colors.green,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        hintText: 'Enter your email',
                        prefixIconColor: Colors.green,
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
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
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
                  if(showErrorMessage)(
                    Container(
                      alignment: Alignment.center,
                      child: Text("Login fehlgeschlagen!",
                      style: TextStyle(color: Colors.red),),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5.h),
                    )
                  ),
                  Mutation(
                    options: MutationOptions(
                      document: gql(loginMutation),
                      onError: (dynamic error) {
                        print(error);
                        if(error.linkException!=null && error.linkException.originalException != null && error.linkException.originalException.socketEx != null && error.linkException.originalException.message == "Connection timed out"){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NoConnectionPage(),
                            ),
                          );
                        }
                        setErrorMessage();
                      },
                      onCompleted: (dynamic resultData) {
                        if(resultData != null){
                        String token = resultData['login'];
                        GraphQLConfiguration.setToken(token);
                        graphQLConfig.addToken(token);
                        isLoggedIn = true;
                        box1.put("login", token);
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );}else{
                          setErrorMessage();
                        }
                      },
                      update: (GraphQLDataProxy cache, QueryResult? result) {
                        return cache;
                      },
                    ),
                    builder: (RunMutation runMutation, QueryResult? result) {
                      return ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                          runMutation({
                            'email': emailController.text,
                            'password': passwordController.text
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 2.h),
                          primary: Color.fromRGBO(21, 128, 61, 1),
                        ),
                        child: Text(
                          'Einloggen',
                          style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        )),
      ),
      persistentFooterButtons: [
        PersistentFooter(),
      ],
    );
  }

  Future<void> authUser(String email, String password) async {
    GraphQLClient _client = graphQLConfig.clientToQuery();
    print(email);
    print(password);

    QueryResult result = await _client.mutate(MutationOptions(
        document: gql(loginMutation),
        variables: {"email": email, "password": password}));
    if (result.hasException) {
      print(result);
      return null;
    } else {
      String token = result.data?['login'];
      GraphQLConfiguration.setToken(token);
      graphQLConfig.addToken(token);
      isLoggedIn = true;
      box1.put("login", token);
      print('login' + token);
      return null;
    }
    //box1.get("authorization");
  }
}
