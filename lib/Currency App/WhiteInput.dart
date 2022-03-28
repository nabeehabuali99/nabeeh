import 'package:flutter/material.dart';

import '../Constants/Colors.dart';
import 'CurrencyService.dart';

class InputWhitePage extends StatefulWidget {
  final origCurrency;
  final convCurrency;

  const InputWhitePage({this.origCurrency, this.convCurrency});

  @override
  _InputWhitePageState createState() => _InputWhitePageState();
}

class _InputWhitePageState extends State<InputWhitePage> {
  var currInput = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 25.0),
          InkWell(
              onTap: () {
                setState(() {
                  currInput = 0;
                });
              },
              child: Text(
                'tap to delete',
                style: TextStyle(
                    color: Color_Const.lightpinkCurr,
                    fontSize: 17.0,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(height: 10.0),
          Center(
              child: Text(
            currInput.toString(),
            style: TextStyle(
                color: Color_Const.lightredCurr,
                fontSize: 100.0,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold),
          )),
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
                    color: Color_Const.lightpinkCurr),
                child: Center(
                    child: Text(
                  number1.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                )))),
        InkWell(
          onTap: () {
            calculateNumber(number2);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color_Const.lightpinkCurr),
            child: Center(
              child: Text(
                number2.toString(),
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
            calculateNumber(number3);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color_Const.lightpinkCurr),
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
            // calculateNumber(number1);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color:  Color_Const.lightpinkCurr),
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
                color: Color_Const.lightpinkCurr),
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
                widget.convCurrency, widget.origCurrency, currInput, context);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color:   Color_Const.redredCurr),
            child:   Center(
                child: Icon(
              Icons.check,
              color: Color_Const.white,
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
