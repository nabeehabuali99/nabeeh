import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';

import '../Constants/Colors.dart';
import '../Constants/My Icons.dart';
import 'CurrencyService.dart';

class InputRedPage extends StatefulWidget {
  final origCurrency;
  final convCurrency;

  const InputRedPage({this.origCurrency, this.convCurrency});

  @override
  _InputRedPageState createState() => _InputRedPageState();
}

class _InputRedPageState extends State<InputRedPage> {
  var currInput = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color_Const.lightredCurr,
      body: Column(
        children: <Widget>[
          VerticalSpace(10),
          InkWell(
            onTap: () {
              setState(() {
                currInput = 0;
              });
            },
            child:   Text(
              'tap to delete',
              style: TextStyle(
                  color: Color_Const.llightpinkCurr,
                  fontSize: 17.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10.0),
          Center(
            child: Text(
              currInput.toString(),
              style:   TextStyle(
                  color: Color_Const.white,
                  fontSize: 100.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 25.0),
          numberRow(1, 2, 3),
          const SizedBox(height: 25.0),
          numberRow(4, 5, 6),
          const SizedBox(height: 25.0),
          numberRow(7, 8, 9),
          const SizedBox(height: 25.0),
          finalRow()
        ],
      ),
    );
  }

  Widget numberRow(number1, number2, number3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            calculateNumber(number1);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color_Const.red2Curr),
            child: Center(
              child: Text(
                number1.toString(),
                style:   TextStyle(
                    color: Color_Const.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calculateNumber(number2);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color_Const.red2Curr),
            child: Center(
              child: Text(
                number2.toString(),
                style:   TextStyle(
                    color: Color_Const.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calculateNumber(number3);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color_Const.red2Curr),
            child: Center(
              child: Text(
                number3.toString(),
                style:   TextStyle(
                    color: Color_Const.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget finalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            // setState(() {
            //   currInput = currInput +int.parse('.');
            // });

            //calculateNumber(number1);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color_Const.red2Curr),
            child:   Center(
              child: Text(
                '.',
                style: TextStyle(
                    color: Color_Const.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calculateNumber(0);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color_Const.red2Curr),
            child: Center(
              child: Text(
                0.toString(),
                style:   TextStyle(
                    color: Color_Const.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            CurrencyService().convertCurrency(
                widget.origCurrency, widget.convCurrency, currInput, context);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0), color: Color_Const.white),
            child:   Center(
                child: Icon(
                  MyIcons.check,
                  color: Color_Const.cheakredCurr,
                  size: 25.0,
                )),
          ),
        )
      ],
    );
  }

  calculateNumber(int number) {
    if (currInput == 0) {
      setState(() {
        currInput = number;
      });
    } else {
      setState(() {
        currInput = (currInput * 10) + number;
      });
    }
  }
}