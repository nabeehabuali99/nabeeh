import 'package:flutter/material.dart';

import 'GetDateHairStyle.dart';

class GetTime extends StatefulWidget {
  const GetTime({Key? key, required this.time}) : super(key: key);
final String time;
  @override
  State<GetTime> createState() => _GetTimeState();
}
var selectedDate = 18;
var selectedBarber = 'Jonathan';
var selectedTime = '12:30';
class _GetTimeState extends State<GetTime> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: switchTimeColor(widget.time)),
          height: 50.0,
          width: 75.0,
          child: InkWell(
            onTap: () {
              selectTime(widget.time);
            },
            child: Center(
              child: Text(
                widget.time,
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: switchTimeContentColor(widget.time)),
              ),
            ),
          ),
        ),
        const SizedBox(width: 25.0,),
      ],
    );
  }
  Color switchTimeColor(time) {
    if (widget.time == selectedTime) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchTimeContentColor(time) {
    if (widget.time == selectedTime) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectTime(time) {
    setState(() {
      selectedTime = widget.time;
    });
  }
}
