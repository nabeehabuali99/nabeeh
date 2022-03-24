import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;

class ListItemProfile extends StatefulWidget {

final IconData iconButton;
final Color buttonColor;
final String title;
  const ListItemProfile({Key? key, required this.iconButton, required this.buttonColor, required this.title}) : super(key: key);

  @override
  State<ListItemProfile> createState() => _ListItemProfileState();
}

class _ListItemProfileState extends State<ListItemProfile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(widget.title =='Gift card')
          {
            Navigator.of(context).pushNamed(route.travel);
          }
        else if(widget.title =='Bank card'){
          Navigator.of(context).pushNamed(route.food);
        }
        else if(widget.title =='Replacement code'){
          Navigator.of(context).pushNamed(route.food);
        }  else if(widget.title =='Consulting collection'){
          Navigator.of(context).pushNamed(route.home);
        }
       else if(widget.title =='Customer service'){
      Navigator.of(context).pushNamed(route.home);
    }else{
          const Text('Error Message',style: TextStyle(color: Colors.red),);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: widget.buttonColor.withOpacity(0.3)
              ),
              child: Icon(
                  widget.iconButton,
                  color: widget.buttonColor,
                  size: 25.0
              ),
            ),
            const SizedBox(width: 25.0),
            Container(
              width: MediaQuery.of(context).size.width - 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(widget.title,
                    style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 20.0
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
