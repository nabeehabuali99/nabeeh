import 'package:flutter/material.dart';

class ContainerItem extends StatefulWidget {
  final String ImageName;
  final String nameOfItems;
   const ContainerItem({Key? key, required this.ImageName, required this.nameOfItems}) : super(key: key);

  @override
  State<ContainerItem> createState() => _ContainerItemState();
}

class _ContainerItemState extends State<ContainerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            decoration:   BoxDecoration(
                image: DecorationImage(
                    image:
                    AssetImage(widget.ImageName))),
          ),
          Text(
            widget.nameOfItems,
            style: const TextStyle(fontFamily: 'Quicksand'),
          )
        ],
      ),
    );
  }
}
