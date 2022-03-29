import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';

import '../Constants/Size_Config.dart';
import 'CurrencyList.dart';
import 'CurrencyService.dart';
import 'RedInput.dart';
import 'WhiteInput.dart';

class DashboardPage extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyone;
  final currencytwo;
  final isWhite;

  const DashboardPage(
      {this.currencyVal,
      this.convertedCurrency,
      this.currencyone,
      this.currencytwo,
      this.isWhite});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
              height: SizeConfig.screenHeight,
              width: SizeConfig.defaultSize,
              color: Color_Const.white),
          Container(
              height: SizeConfig.defaultSize! / 0.021,
              width: SizeConfig.screenWidth,
              color: Color_Const.lightredCurr),
          Container(
            child: Center(
                child: Column(
              children: <Widget>[
                VerticalSpace(6.5),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CurrencyList()));
                    },
                    child: Text(
                      CurrencyService().getCurrencyString(widget.currencyone),
                      style: TextStyle(
                          color: Color_Const.white,
                          fontSize: 22.0,
                          fontFamily: 'Quicksand'),
                    )),
                const SizedBox(height: 20.0),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => InputRedPage(
                                origCurrency: widget.currencyone,
                                convCurrency: widget.currencytwo),
                          ),
                        );
                      },
                      child: Text(
                        widget.currencyVal.toString(),
                        style: TextStyle(
                            color: Color_Const.white,
                            fontSize: 40.0,
                            fontFamily: 'Quicksand'),
                      )),
                ),
                Text(
                  widget.currencyone,
                  style: TextStyle(
                      color: Color_Const.lightpinkCurr,
                      fontSize: 17.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25.0),
                Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(62.5),
                      color: Color_Const.white,
                      border: Border.all(
                          color: Color_Const.lightredCurr,
                          style: BorderStyle.solid,
                          width: 5.0)),
                  child: Center(
                    child: widget.isWhite
                        ? Icon(
                            MyIcons.arrowUp,
                            size: 60.0,
                            color: Color_Const.lightredCurr,
                          )
                        : Icon(
                            MyIcons.arrowDown,
                            size: 60.0,
                            color: Color_Const.lightredCurr,
                          ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  widget.currencytwo,
                  style: TextStyle(
                      color: Color_Const.lightpinkCurr,
                      fontSize: 10.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => InputWhitePage(
                              origCurrency: widget.currencyone,
                              convCurrency: widget.currencytwo)));
                    },
                    child: Text(
                      widget.convertedCurrency.toString(),
                      style: TextStyle(
                          color: Color_Const.lightredCurr,
                          fontSize: 120.0,
                          fontFamily: 'Quicksand'),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  CurrencyService().getCurrencyString(widget.currencytwo),
                  style: TextStyle(
                      color: Color_Const.lightredCurr,
                      fontSize: 22.0,
                      fontFamily: 'Quicksand'),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
