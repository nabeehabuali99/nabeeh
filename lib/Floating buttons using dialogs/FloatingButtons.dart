import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'package:test_app_nabeeh/Constants/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';
import '../Constants/Colors.dart';
import '../Constants/Shared Widgets/Text Widget.dart';
import 'Widgets/RaisedButton.dart';

class FloatingButtons extends StatefulWidget {
  const FloatingButtons({Key? key}) : super(key: key);

  @override
  State<FloatingButtons> createState() => _FloatingButtonsState();
}

class _FloatingButtonsState extends State<FloatingButtons> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: textWidget(
            AllStringsConstants.floatingActionButton,
            FontFamilyConstants.montserrat,
            Color_Const.black,
            FontSizeConstants.fontsize15,
            FontWeight.normal),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showButtons,
        tooltip: AllStringsConstants.toolTipActionButton,
        child: const Icon(MyIcons.add),
      ),
    );
  }

  void showButtons() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(SizeConfig.defaultSize! * 1),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      raisedButtonWidget(
                          () {}, Color_Const.green, Color_Const.white),
                      const VerticalSpace(2),
                      raisedButtonWidget(
                          () {}, Color_Const.blue, Color_Const.white),
                      const VerticalSpace(2),
                      raisedButtonWidget(
                          () {}, Color_Const.red, Color_Const.white),
                    ]),
              )
            ],
          );
        });
  }
}
