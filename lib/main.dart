import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;
import 'Car Service App/CurrentVehicle.dart';
import 'Clean Design/Fashion Store/StoreHomeFashion.dart';
import 'Clean Design/Hairstylist App/homeHiarStyle.dart';
import 'Constants/Size_Config.dart';
import 'Currency App/CurrencyView.dart';
import 'Fruits Design/homeFruits.dart';
import 'Plants Design/homePlants.dart';
import 'Scroll Effects/Scrolling.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      home: ScrollEffects(), //    SignIn()  ||   MyHomePage()  || UsersProfile() || CardsUI() || TravelHome() ||FoodRecipesPage() ||CakeCataloge() || HomeScreen ||ProfileApp ||HomeScreenClean()
    );
  }
}
//HomePlants
//ChefDesign() // HomeHairStyle() //HomeFruits() //CurrencyView() //CurrentCar()//FashionStore()
//ScrollEffects