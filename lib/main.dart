import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;
import 'Car Service App/CurrentVehicle.dart';
import 'Clean Design/Fashion Store/StoreHomeFashion.dart';
import 'Clean Design/Hairstylist App/homeHiarStyle.dart';
import 'Constants/SizeConfig/Size_Config.dart';
import 'Currency App/CurrencyView.dart';
import 'Floating buttons using dialogs/FloatingButtons.dart';
import 'FoodReviews/HomeFoodReviews.dart';
import 'Fruits Design/homeFruits.dart';
import 'Plants Design/homePlants.dart';
import 'Rental Service/RentalHome.dart';
import 'Restaurant Reviews/ProfileResturantReviews.dart';
import 'Scroll Effects/Scrolling.dart';
import 'Starbucks Coffee/HomeStarbucks.dart';
import 'fancy Foods/home fancy.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      home: HomeFoodReviews(), //    SignIn()  ||   MyHomePage()  || UsersProfile() || CardsUI() || TravelHome() ||FoodRecipesPage() ||CakeCataloge() || HomeScreen ||ProfileApp ||HomeScreenClean()
    );
  }
}
//HomePlants
//ChefDesign() // HomeHairStyle() //HomeFruits() //CurrencyView() //CurrentCar()//FashionStore()
//ScrollEffects        //FloatingButtons ///FancyFood  //RestaurantProfile //RentalHome ///HomeFoodReviews