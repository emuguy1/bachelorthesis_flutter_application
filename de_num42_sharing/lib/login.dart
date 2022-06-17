
import 'package:de_num42_sharing/profile.dart';
import 'package:de_num42_sharing/util/GraphQLConfiguration.dart';
import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:de_num42_sharing/widget/topBar.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sizer/sizer.dart';

import 'main.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(context,false),
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
                        hintText: 'Enter your email',
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  Mutation(
                    options: MutationOptions(
                      document: gql("""mutation login {
                        login(email: "asol@num42.de", password: "password")
                      }
                      """),
                      onCompleted: (dynamic resultData){
                        box1.put('login',resultData['login']);
                        print(resultData);
                      },
                      update: (GraphQLDataProxy cache, QueryResult? result) {
                        return cache;
                      },
                    ),
                    builder: (RunMutation runMutation, QueryResult? result) {
                      return FloatingActionButton(
                        onPressed: () => authUser("asol@num42.de", "password"),
                        tooltip: 'Star',
                        child: Icon(Icons.star),
                      );
                    },
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
                  Mutation(
                    options: MutationOptions(
                      document: gql("""mutation login(\$email: String!, \$password: String!) {
                        login(email: \$email, password: \$password)
                      }
                      """),

                      onCompleted: (dynamic resultData) {
                        box1.put('login', resultData['login']);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                        print(resultData);
                        Navigator.pop(context);
                      },
                      update: (GraphQLDataProxy cache, QueryResult? result) {
                        return cache;
                      },
                    ),
                    builder: (RunMutation runMutation, QueryResult? result) {
                      return
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                            runMutation({'email': emailController.text,
                              'password': passwordController.text});
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
          document: gql("""mutation login {
                        login(email: "$email", password: "$password")
                      }
                      """)));
      if (result.hasException) {
        print(result);
        return null;
      } else {
        String token = result.data?['login'];
        GraphQLConfiguration.setToken(token);
        graphQLConfig.addToken(token);
        isLoggedIn=true;
        box1.put("login",token);
        print('login' + token);
        return null;
      }
      //box1.get("authorization");
  }

}
