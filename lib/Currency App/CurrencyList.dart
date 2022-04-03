import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'dashboard.dart';

class CurrencyList extends StatefulWidget {
  const CurrencyList({Key? key}) : super(key: key);

  @override
  _CurrencyListState createState() => _CurrencyListState();
}

class _CurrencyListState extends State<CurrencyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color_Const.lightredCurr,
        appBar: AppBar(
          backgroundColor: Color_Const.lightredCurr,
          elevation: 0.0,
          leading: IconButton(
            icon:   Icon(MyIcons.arrowback, color: Color_Const.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: ListView(
          children: <Widget>[
            getListItem('Russian Ruble', 'RUB'),
            getListItem('Indian Rupee', 'INR'),
            getListItem('Japanese Yen', 'JPY'),
            getListItem('Pound Sterling', 'GBP'),
          ],
        ));
  }

  Widget getListItem(String currencyName, String currency) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(CupertinoPageRoute(
            builder: (context) => DashboardPage(
                currencyVal: 0.0,
                isWhite: false,
                convertedCurrency: 0.0,
                currencyone: 'USD',
                currencytwo: currency)));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 20.0),
        child: Text(
          currencyName,
          style:   TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Color_Const.white),
        ),
      ),
    );
  }
}