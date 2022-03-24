import 'package:flutter/material.dart';

class GetWork extends StatefulWidget {
  const GetWork({Key? key, required this.imgPath}) : super(key: key);
final  String  imgPath;
  @override
  State<GetWork> createState() => _GetWorkState();
}

class _GetWorkState extends State<GetWork> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 100.0,
        width: 125.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image:
            DecorationImage(image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
      ),
    );
  }
}
