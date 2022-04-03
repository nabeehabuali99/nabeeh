import 'package:flutter/material.dart';

Widget iconButtonWidget(IconData  icon, Color color, double size,Function() onPressed){
  return IconButton(
    icon: Icon(icon, color: color,size: size), onPressed: onPressed,
  );
}