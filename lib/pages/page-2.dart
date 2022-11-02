import 'dart:html';

import 'package:flutter/cupertino.dart.';
import 'package:glassmorphism/glassmorphism.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.25,
          width: MediaQuery.of(context).size.width,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  child: Image.asset('assets/image5.png'),
                ),
                Positioned(
                  child: Image.asset('assets/star1.png'),
                ),
                Positioned(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 55,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
