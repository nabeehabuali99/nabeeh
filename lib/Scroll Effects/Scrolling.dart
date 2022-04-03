import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';

import '../Constants/Shared Widgets/Text Widget.dart';

class ScrollEffects extends StatefulWidget {
  const ScrollEffects({Key? key}) : super(key: key);

  @override
  _ScrollEffectsState createState() => _ScrollEffectsState();
}

class _ScrollEffectsState extends State<ScrollEffects> {
  late ScrollController _scrollController;

  List allSlides = [
    {'slideName': 'slideOne', 'selected': false},
    {'slideName': 'slideTwo', 'selected': false},
    {'slideName': 'slideThree', 'selected': false},
    {'slideName': 'slideFour', 'selected': false},
    {'slideName': 'slideFive', 'selected': false},
    {'slideName': 'slideSix', 'selected': false},
    {'slideName': 'slideSeven', 'selected': false},
    {'slideName': 'slideEight', 'selected': false},
    {'slideName': 'slideNine', 'selected': false}
  ];

  var selectedSlide;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeSelector);
    setState(() {
      selectedSlide = allSlides[0];
      selectedSlide['selected'] = true;
    });
  }

  changeSelector() {
    var maxScrollVal = _scrollController.position.maxScrollExtent;    var divisor = (maxScrollVal / allSlides.length) + 20;
    var scrollValue = _scrollController.offset.round();
    var slideValue = (scrollValue / divisor).round();
    var currentSlide = allSlides.indexWhere((slide) => slide['selected']);
    setState(() {
      allSlides[currentSlide]['selected'] = false;
      selectedSlide = allSlides[slideValue];
      selectedSlide['selected'] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Scroll Tricks'),
          centerTitle: true,
        ),
        body: Row(
          children: <Widget>[
            const HorizintalSpace(1),
            SizedBox(
              width: SizeConfig.screenWidth! / 3,
              child: ListView(
                  children: allSlides.map((element) {
                return getTitles(element);
              }).toList()),
            ),
            const SizedBox(width: 10.0),
            Container(
              width: (SizeConfig.screenWidth! / 3) * 2 - 25.0,
              child: ListView(
                controller: _scrollController,
                children: allSlides.map((element) {
                  return getCards(element);
                }).toList(),
              ),
            )
          ],
        ));
  }

  Widget getCards(slide) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, right: 10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Color_Const.black, style: BorderStyle.solid, width: 1.0),
        ),
        height: 200.0,
        width: 125.0,
        child: Center(
          child: Text(
            slide['slideName'],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  scrollToSlide(inputSlide) {
    var whichSlide = allSlides
        .indexWhere((slide) => slide['slideName'] == inputSlide['slideName']);

    var maxScrollValue = _scrollController.position.maxScrollExtent;

    var divisor = (maxScrollValue / allSlides.length) + 20;

    var scrollToValue = whichSlide * divisor;

    _scrollController.animateTo(scrollToValue,
        curve: Curves.easeIn, duration: const Duration(milliseconds: 1000));
  }

  Widget getTitles(slide) {
    return InkWell(
      onTap: () {
        scrollToSlide(slide);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: textWidget(
          slide['slideName'],
          'Montserrat',
          Color_Const.black,
          17.0,
          slide['selected'] ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
