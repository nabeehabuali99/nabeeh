import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';

class GetService extends StatefulWidget {
  const GetService({Key? key, required this.name, required this.price})
      : super(key: key);
  final String name;
  final int price;

  @override
  State<GetService> createState() => _GetServiceState();
}
var selectedDate = 18;
var selectedBarber = 'Jonathan';
var selectedTime = '12:30';
class _GetServiceState extends State<GetService> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 15.0),
        Text(
          widget.name,
          style: TextStyle(
              fontFamily: 'Nunito', fontSize: 17.0, color: Color_Const.black),
        ),
        const SizedBox(width: 5.0),
        Text(
          '\$' + widget.price.toString(),
          style: TextStyle(
              fontFamily: 'Nunito', fontSize: 17.0, color: Color_Const.grey),
        ),
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
      ],
    );
  }
}
