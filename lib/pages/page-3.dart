//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:glassmorphism/glassmorphism.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController()
      ..addListener(() {
        _onscroll();
      });

    super.initState();
  }

  double _scrolloffset = 0.0;

  void _onscroll() {
    setState(() {
      _scrolloffset = _controller.offset;
      print(_scrolloffset);
    });
  }

  double _l1speed = 0.5;
  double _l2speed = 0.45;
  double _l3speed = 0.40;

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: _l1speed * _scrolloffset,
            child: Image.asset('assets/image5.png'),
          ),
          Positioned(
            bottom: _l2speed * _scrolloffset,
            child: Image.asset('assets/star1.png'),
          ),
          Positioned(
            top: _l3speed*_scrolloffset,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                GlassmorphicContainer(
                  width: 170,
                  height: 270,
                  borderRadius: 20,
                  blur: 30,
                  alignment: Alignment.center,
                  border: 2,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.1),
                        Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                      stops: [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 53, 213, 45).withOpacity(0.5),
                      Color.fromARGB(255, 6, 54, 4).withOpacity(0.5),
                    ],
                  ),
                  child: null,
                ),
              ],
            ),
          ),
          Positioned.fill(
              child: SingleChildScrollView(
            controller: _controller,
            child: SizedBox(
              height: screensize.height * 3,
            ),
          )),
        ],
      ),
    );
  }
}
