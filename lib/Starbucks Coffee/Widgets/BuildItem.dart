import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';

import '../../Constants/Colors.dart';

var selectedItem = 'All products';

class BuildItem extends StatefulWidget {
  const BuildItem({Key? key, required this.productName, required this.count})
      : super(key: key);
  final String productName;
  final int count;

  @override
  State<BuildItem> createState() => _BuildItemState();
}

class _BuildItemState extends State<BuildItem> {

  @override
  Widget build(BuildContext context) {
    var fontSize15=MediaQuery.of(context).size.width*0.01+MediaQuery.of(context).size.height*0.01;
    return Padding(
      padding: EdgeInsets.only(
          right: SizeConfig.defaultSize! * 1,
          top: SizeConfig.defaultSize! * 1,
          bottom: SizeConfig.defaultSize! * 1,
          left: SizeConfig.defaultSize! * 0.4),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 1),
            color: switchHighlight(widget.productName),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4.0,
                  spreadRadius: 2.0,
                  color: switchShadow(widget.productName))
            ]),
        height: SizeConfig.defaultSize! * 5,
        width: SizeConfig.defaultSize! * 13,
        child: InkWell(
          onTap: () {
            selectedProduct(widget.productName);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const VerticalSpace(1),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 1),
                child: textWidget(
                  widget.count.toString(),
                  FontFamilyConstants.montserrat,
                  switchHighlightColor(widget.productName),
                  fontSize15,
                  FontWeight.bold,
                ),
              ),
              const VerticalSpace(0.8),
              Padding(
                padding:   EdgeInsets.all( SizeConfig.defaultSize! * 1),
                child: textWidget(
                    widget.productName,
                    FontFamilyConstants.montserrat,
                    switchHighlightColor(widget.productName),
                    fontSize15,
                    FontWeight.normal),
              )
            ],
          ),
        ),
      ),
    );
  }

  selectedProduct(prodName) {
    setState(() {
      selectedItem = prodName;
    });
  }

  switchHighlight(prodName) {
    if (prodName == selectedItem) {
      return Color_Const.darkGreen;
    } else {
      return Colors.grey.withOpacity(0.3);
    }
  }

  switchHighlightColor(prodName) {
    if (prodName == selectedItem) {
      return Color_Const.white;
    } else {
      return Color_Const.black;
    }
  }

  switchShadow(prodName) {
    if (prodName == selectedItem) {
      return Color_Const.darkGreen.withOpacity(0.4);
    } else {
      return Color_Const.transparent;
    }
  }
}
