import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Dimensions.dart';

import '../../Constants/PathImageConstants.dart';
import '../../Constants/SizeConfig/Size_Config.dart';

Widget  containerImageWidget(double height,double width , String image,double radius){

  return Container(
    height: SizeConfig.defaultSize! * height,
    width:   SizeConfig.screenWidth! / width ,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        image:     DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover)),
  );
}