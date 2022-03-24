import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Furniture App/HomeScreen.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;

class itemCard extends StatefulWidget {

  final String imgPath;
  final String title;


  const itemCard({Key? key, required this.imgPath, required this.title }) : super(key: key);

  @override
  State<itemCard> createState() => _itemCardState();

}

 class _itemCardState extends State<itemCard> {
     bool isFavorite =true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: InkWell(
        onTap: (){

          if( widget.title =='FinnNavian1'){
            Navigator.of(context).pushNamed(route.showItemInfo);
          }
        },
        child: Container(
          height: 150.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 140.0,
                height: 150.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
              ),
              const SizedBox(width: 4.0),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 45.0),
                      Material(
                        elevation:  isFavorite ? 0.0 : 2.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color:  isFavorite
                                  ? Colors.grey.withOpacity(0.2)
                                  : Colors.white),
                          child: Center(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  if(isFavorite == true) {
                                    isFavorite =!isFavorite;
                                  } else {
                                    isFavorite =!isFavorite;
                                  }

                                });
                              },
                              child:  isFavorite
                                  ?   const Icon(Icons.favorite_border)
                                  :   const Icon(Icons.favorite, color: Colors.red),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    width: 175.0,
                    child: const Text(
                      'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey,
                          fontSize: 12.0),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 35.0),
                      Container(
                        height: 40.0,
                        width: 50.0,
                        color: const Color(0xFFF9C335),
                        child: const Center(
                          child: Text(
                            '\$248',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        width: 100.0,
                        color: const Color(0xFFFEDD59),
                        child:   Center(
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(route.cartFurniture);
                            }
                            ,
                            child: const Text(
                              'Add to cart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
