import 'package:flutter/material.dart';


import '../Widget/GetFoodItemGourmetApp.dart';

class GuessYouLikePage extends StatefulWidget {
  const GuessYouLikePage({Key? key}) : super(key: key);

  @override
  _GuessYouLikePageState createState() => _GuessYouLikePageState();
}

List<Map<String, dynamic>> foodItemsInfo = [
  {
    'dishName': 'Chicken Chow Mein',
    'imgPath': 'assets/food1.png',
    'description':
        'Chicken fried noodles is a delicious home-cooked dish made from chicken, fragrance and taste',
    'calInfo': 123,
    'distance': 23,
    'cookingTime': 23,
    'rating': 5
  },
  {
    'dishName': 'Beef vermicelli soup',
    'imgPath': 'assets/food1.png',
    'description':
        'Beef vermicelli soup is a delicacy made of beef and vermicelli. It has rich nutrition and attractive color.',
    'calInfo': 123,
    'distance': 23,
    'cookingTime': 23,
    'rating': 4
  }
];

class _GuessYouLikePageState extends State<GuessYouLikePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: foodItemsInfo.length,
      itemBuilder: ((context, index) {
        return GetFoodItem(
            dishName: foodItemsInfo[index]['dishName'],
            imgPath: foodItemsInfo[index]['imgPath'],
            description: foodItemsInfo[index]['description'],
            calInfo: foodItemsInfo[index]['calInfo'],
            distance: foodItemsInfo[index]['distance'],
            cookingTime: foodItemsInfo[index]['cookingTime'],
            rating: foodItemsInfo[index]['rating']
        );
      }),
    );
  }
}
