import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;
import 'Clean Design/Hairstylist App/homeHiarStyle.dart';
import 'Constants/Size_Config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      home:
          HomeHairStyle(), //    SignIn()  ||   MyHomePage()  || UsersProfile() || CardsUI() || TravelHome() ||FoodRecipesPage() ||CakeCataloge() || HomeScreen ||ProfileApp ||HomeScreenClean()
    );
  }
}
//ChefDesign
