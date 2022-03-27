import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import 'GetDateHairStyle.dart';

class GetBarBer extends StatefulWidget {
  const GetBarBer({Key? key, required this.imgPath, required this.name}) : super(key: key);
final String imgPath;
final String name;
  @override
  State<GetBarBer> createState() => _GetBarBerState();
}

var selectedBarber = 'Jonathan';
var selectedTime = '12:30';

class _GetBarBerState extends State<GetBarBer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                          image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
                ),
                InkWell(
                  onTap: () {
                    selectBarber(widget.name);
                  },
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: getSelectedBarber(widget.name)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 7.0),
            Text(
              widget.name,
              style: const TextStyle(fontFamily: 'FirSans', fontSize: 15.0),
            )
          ],
        ),
        const SizedBox(width:5.0)
      ],
    );
  }

  selectBarber(name) {
    setState(() {
      selectedBarber =  name;
      print(selectedBarber);
    });
  }

  Color getSelectedBarber(name) {
    if ( name == selectedBarber) {
      return Color_Const.green.withOpacity(0.3);
    } else {
      return Color_Const.transparent;
    }
  }

}
