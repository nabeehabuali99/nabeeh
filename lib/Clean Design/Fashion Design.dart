import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'SecondPage.dart';

class FashionDesign extends StatefulWidget {
  const FashionDesign({Key? key}) : super(key: key);

  @override
  _FashionDesignPageState createState() => _FashionDesignPageState();
}

bool status1 = false;
bool status2 = false;
bool status3 = false;
bool isfavorite =true;
 class _FashionDesignPageState extends State<FashionDesign>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        return;
      }
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Filed to pick image: $e ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Discovery',
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.bold),
        ),
        leading: image != null
            ? Image.file(
                image!,
                width: 20,
                height: 20,
              )
            : const FlutterLogo(size: 20),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.image),
            color: Colors.grey,
            onPressed: () => pickImage(ImageSource.gallery),
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            color: Colors.grey,
            onPressed: () => pickImage(ImageSource.camera),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10.0),
              children: <Widget>[
                listItem('assets/model1.png', 'assets/chanellogo.png', status1),
                const SizedBox(width: 35.0),
                listItem(
                    'assets/model2.png', 'assets/louisvuitton.png', status2),
                const SizedBox(width: 35.0),
                listItem('assets/model3.png', 'assets/chloelogo.png', status3),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: MediaQuery.of(context).size.height - 330,
                width: double.infinity,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: const DecorationImage(
                                  image: AssetImage('assets/model1.png'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width - 120.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Daisy',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text(
                                    '34 mins ago',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12.0,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          elevation: 16,
                                          child: Container(
                                            height: 150.0,
                                            width: 360.0,
                                            child: ListView(
                                              children: <Widget>[
                                                const SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      ListTile(
                                                        onTap: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        title: const Text(
                                                            "Edit Post"),
                                                        leading: const Icon(
                                                            Icons.edit),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(0.8),
                                                      ),
                                                      ListTile(
                                                        onTap: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        title: const Text(
                                                            "Delete Post"),
                                                        leading: const Icon(
                                                            Icons.delete),
                                                        contentPadding:
                                                            const EdgeInsets.all(0.8),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  icon: const Icon(Icons.more_vert,
                                      color: Colors.grey, size: 20.0))
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SecondPage(
                                    heroTag: 'assets/modelgrid1.png')));
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.png',
                            child: Container(
                              height: 200.0,
                              width:
                                  (MediaQuery.of(context).size.width - 50.0) /
                                      2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/modelgrid1.png',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SecondPage(
                                        heroTag: 'assets/modelgrid2.png')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.png',
                                child: Container(
                                  height: 95.0,
                                  width: (MediaQuery.of(context).size.width -
                                          100.0) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid2.png'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SecondPage(
                                        heroTag: 'assets/modelgrid3.png')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.png',
                                child: Container(
                                  height: 95.0,
                                  width: (MediaQuery.of(context).size.width -
                                          100.0) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid3.png'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              '# Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.0,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Container(
                          height: 25.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.0,
                                  color: Colors.brown),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.reply,
                            color: Colors.grey.withOpacity(0.4), size: 20.0),
                        const SizedBox(width: 5.0),
                        const Text(
                          '1.7k',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Montserrat'),
                        ),
                        const SizedBox(width: 15.0),
                        Icon(
                          Icons.comment,
                          color: Colors.grey.withOpacity(0.4),
                          size: 20.0,
                        ),
                        const SizedBox(width: 5.0),
                        const Text(
                          '325',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Montserrat'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 200.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children:   <Widget>[
                              InkWell(
                                onTap: (){setState(() {
                                  isfavorite=!isfavorite;
                                });

                                },
                                child:isfavorite? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20.0,
                                ):const Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                  size: 20.0,
                                ),

                              ),
                              const SizedBox(width: 5.0),
                              const Text(
                                '2.3k',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Montserrat'),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 15.0)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 15.0)),
            Tab(icon: Icon(Icons.navigation, color: Colors.black, size: 15.0)),
            Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.grey, size: 15.0)),
          ],
        ),
      ),
    );
  }

  Widget listItem(String imgPath, String logo, bool status) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.5),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50.0,
              left: 50.0,
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    image: DecorationImage(
                        image: AssetImage(logo), fit: BoxFit.contain)),
              ),
            )
          ],
        ),
        const SizedBox(height: 10.0),
        InkWell(
          onTap: () {
            setState(() {
              if (imgPath == 'assets/model1.png') {
                status1 = !status1;
              } else if (imgPath != 'assets/model2.png') {
                status3 = !status3;
              } else if (imgPath != 'assets/model3.png') {
                status2 = !status2;
              }
            });
          },
          child: status
              ? Container(
                  height: 30.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.blue),
                  child: const Center(
                    child: Text(
                      'UnFollow',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.white),
                    ),
                  ),
                )
              : Container(
                  height: 30.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFF916144)),
                  child: const Center(
                    child: Text(
                      'Follow',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.white),
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
