import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Home%20Page/Food/Cake%20Cataloge.dart';

import '../Car Service App/Check Vehicle Availability.dart';
import '../Car Service App/CurrentVehicle.dart';
import '../Clean Design/Chef Profile/chef design.dart';
import '../Clean Design/Fashion Design.dart';
import '../Clean Design/Fashion Store/detailsFashion.dart';
import '../Clean Design/Gourmet Takeaway app/Home Gourmet.dart';
import '../Fruits Design/User Profile Fruits.dart';
import '../Furniture App/Cart App.dart';
import '../Furniture App/HomeScreen.dart';
import '../Furniture App/ShowItems.dart';
import '../Furniture App/profile App.dart';
import '../Home Page/Cards.dart';
import '../Home Page/Food/food Recipes.dart';
import '../Home Page/Home Chat.dart';
import '../Home Page/travel Diary/tavel home.dart';
import '../Home Page/users profile/profiles.dart';
import '../Login And Register/SignIn.dart';
import '../Login And Register/signUp.dart';

const String signUp = 'signup';
const String profile = 'profile';
const String logout = 'logout';
const String toCart = 'ToCart';
const String profileFurniture = 'ProfileFurniture';
const String homeScreenApp = 'HomeScreenApp';
const String travel = 'travel';
const String food = 'food';
const String home = 'home';
const String showItemInfo = 'ShowItemInfo';
const String cartFurniture = 'CartFurniture';
const String fashionDesign = 'FashionDesign';
const String cakeCataloge = 'CakeCataloge';
const String chefDesign = 'ChefDesign';
const String homeGourmet = 'HomeGourmet';
const String userProfileFruit = 'UserProfileFruit';
const String checkAvailability = 'CheckAvailability';
const String detailInfo = 'DetailInfo';
const String currentCar = 'CurrentCar';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case signUp:
      return MaterialPageRoute(builder: (context) => const SignupPage());
    case profile:
      return MaterialPageRoute(builder: (context) => const UsersProfile());
    case logout:
      return MaterialPageRoute(builder: (context) => const SignIn());
    case toCart:
      return MaterialPageRoute(builder: (context) => CardsUI());
    case profileFurniture:
      return MaterialPageRoute(builder: (context) => const ProfileApp());
    case homeScreenApp:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case travel:
      return MaterialPageRoute(builder: (context) => const TravelHome());
    case food:
      return MaterialPageRoute(builder: (context) => const FoodRecipesPage());
    case home:
      return MaterialPageRoute(builder: (context) => const MyHomePage());
    case showItemInfo:
      return MaterialPageRoute(builder: (context) => const ShowItemInfo());
    case cartFurniture:
      return MaterialPageRoute(builder: (context) => const CartApp());
    case fashionDesign:
      return MaterialPageRoute(builder: (context) => const FashionDesign());
    case cakeCataloge:
      return MaterialPageRoute(builder: (context) => CakeCataloge());
    case chefDesign:
      return MaterialPageRoute(builder: (context) => const ChefDesign());
    case homeGourmet:
      return MaterialPageRoute(builder: (context) => const HomeGourmet());
    case userProfileFruit:
      return MaterialPageRoute(builder: (context) => const UserProfileFruit());
    case checkAvailability:

      return MaterialPageRoute(builder: (context) => const CheckAvailability());
      case detailInfo:

      return MaterialPageRoute(builder: (context) => const DetailInfo());
      case currentCar:
      return MaterialPageRoute(builder: (context) => const CurrentCar());
    default:
      throw ("This Rout does not exists");
  }
}

// class Routes extends StatefulWidget {
//   const Routes({Key? key}) : super(key: key);
//
//   @override
//   State<Routes> createState() => _RoutesState();
// }
//
// class _RoutesState extends State<Routes> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: <String, WidgetBuilder>{
//         '/signup': (BuildContext context) =>  const SignupPage(),
//         '/profile': (BuildContext context) =>  const UsersProfile(),
//         '/logout': (BuildContext context) =>  const  SignIn(),
//         '/ToCart': (BuildContext context) =>  CardsUI(),
//         '/ProfileFurniture': (BuildContext context) =>  const ProfileApp(),
//         '/HomeScreenApp': (BuildContext context) =>  const HomeScreen(),
//         '/travel': (BuildContext context) =>  const TravelHome(),
//         '/food': (BuildContext context) =>  const FoodRecipesPage(),
//         '/home': (BuildContext context) =>  const MyHomePage(),
//         '/ShowItemInfo': (BuildContext context) =>  const ShowItemInfo(),
//         '/CartFurniture': (BuildContext context) =>    const CartApp(),
//         '/FashionDesign': (BuildContext context) =>    const FashionDesign(),
//       },
//     );
//   }
// }
