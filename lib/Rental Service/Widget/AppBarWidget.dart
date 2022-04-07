import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/My Icons.dart';
import '../../Constants/Shared Widgets/Icon Button Widget.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';
import '../../Constants/SizeConfig/IconSizeConstants.dart';
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: textWidget('Rent house', FontFamilyConstants.montserrat,
          Color_Const.black, FontSizeConstants.fontsize20, FontWeight.normal),
      centerTitle: true,
      leading: iconButtonWidget(
          MyIcons.arrow, Color_Const.black, IconSizeConstants.iconSize15, () {
        Navigator.of(context).pop();
      }),
      backgroundColor: Color_Const.grey,
      elevation: 0.0,
    ) ;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SizeConfig.screenHeight! / 13);
}

