import 'package:flutter/material.dart';

class InfoRow extends StatefulWidget {
  const InfoRow({Key? key}) : super(key: key);

  @override
  State<InfoRow> createState() => _InfoRowState();
}

class _InfoRowState extends State<InfoRow> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  const    Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: const DecorationImage(
                                  image: AssetImage('assets/chris.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Mona Hall',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.orange),
                            ),
                            Text(
                              '10:51PM',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])
            ),
            const SizedBox(width: 10.0),
            Container(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  const Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: const DecorationImage(
                                  image: AssetImage('assets/tomcruise.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Mona Hall',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.orange),
                            ),
                            Text(
                              '10:51PM',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])
            ),
          ],
        )
    );
  }
}
