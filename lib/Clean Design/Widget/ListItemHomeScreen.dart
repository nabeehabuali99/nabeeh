import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;

class ListItem extends StatefulWidget {
  final String imgPath;
  final String name;
  final bool available;


  const ListItem({Key? key, required this.imgPath, required this.name, required this.available}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(widget.name == 'Chris'){
          Navigator.of(context).pushNamed(route.profile);
        }
      },
      child: Column(
        children: <Widget>[
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
          ),
          const SizedBox(height: 7.0),
          Row(
            children: <Widget>[
              Text(widget.name,
                  style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600)),
              const  SizedBox(width: 4.0),
              widget.available
                  ? Container(
                height: 10.0,
                width: 10.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.orange),
              )
                  : Container()
            ],
          )
        ],
      ),
    );
  }
}
