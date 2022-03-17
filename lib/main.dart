import 'package:flutter/material.dart';

import 'Home Page/Cards.dart';
import 'Home Page/Home Chat.dart';
 import 'Home Page/users profile/profiles.dart';
import 'Login And Register/SignIn.dart';
import 'Login And Register/signUp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) =>  const SignupPage()
      },
      home:   CardsUI(),    //    SignIn()  ||   MyHomePage()  || UsersProfile() || CardsUI()
    );
  }
}
