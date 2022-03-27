import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';

class GetDate extends StatefulWidget {
  const GetDate(itemsDate, {Key? key, required this.date, required this.day}) : super(key: key);
  final int date;
  final String day;

  @override
  State<GetDate> createState() => _GetDateState();
}
var selectedDate = 18;
var selectedBarber = 'Jonathan';
var selectedTime = '12:30';
class _GetDateState extends State<GetDate> {
  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: switchColor(widget.date)),
        width: 60.0,
        height: 60.0,
        child: InkWell(
          onTap: () {
            selectDate(widget.date);
          },
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 7.0),
                Text(
                  widget.date.toString(),
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: switchContentColor(widget.date)),
                ),
                Text(
                  widget.day,
                  style: TextStyle(
                      fontFamily: 'FiraSans',
                      fontSize: 15.0,
                      color: switchContentColor(widget.date)),
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(width: 25.0),
    ]);
  }
  Color switchColor(date) {
    if (widget.date == selectedDate) {
      return Color_Const.black.withOpacity(0.8);
    } else {
      return Color_Const.grey.withOpacity(0.2);
    }
  }

  Color switchContentColor(date) {
    if (widget.date == selectedDate) {
      return Color_Const.white;
    } else {
      return Color_Const.black;
    }
  }

  selectDate(date) {
    setState(() {
      selectedDate = widget.date;
    });
  }
}
