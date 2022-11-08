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
    });
  }

  double _l1speed = 0.5;
  double _l2speed = 0.45;
  double _l3speed = 0.40;
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var height = screensize.height * 2;
    return CupertinoPageScaffold(
      child: Container(
        color: const Color.fromARGB(255, 2, 3, 12),
        child: Stack(
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
              top: _l3speed*_scrolloffset*-1*1,
              height: screensize.height * 1.5,
              child: Container(
                width: screensize.width,
                color: const Color.fromARGB(0, 0, 0, 0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 55,
                    ),
                    GlassmorphicContainer(
                      margin: const EdgeInsets.only(bottom: 45),
                      width: 170,
                      height: 270,
                      borderRadius: 30,
                      blur: 30,
                      alignment: Alignment.center,
                      border: 2,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFFffffff).withOpacity(0.1),
                            const Color(0xFFFFFFFF).withOpacity(0.05),
                          ],
                          stops: const [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color.fromARGB(255, 53, 213, 45)
                              .withOpacity(0.5),
                          const Color.fromARGB(255, 6, 54, 4).withOpacity(0.5),
                        ],
                      ),
                      child: null,
                    ),
                    const Text(
                      'LOREM IPSUM',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.white),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                          color: const Color.fromARGB(88, 255, 255, 255),
                          onPressed: () {},
                          child: const Icon(CupertinoIcons.news),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CupertinoButton(
                          color: const Color.fromARGB(88, 255, 255, 255),
                          onPressed: () {},
                          child: const Icon(CupertinoIcons.play_rectangle_fill),
                        ),
                      ],
                    ),
                    
                     // top: screensize.height + (_scrolloffset * -1 * 1),
                       Positioned(
                         top: screensize.height + (_l3speed*_scrolloffset * -1 * 1),
                         child: Container(
                          margin: EdgeInsets.only(top: 20),
                          height: screensize.height*0.7,
                          width: 300,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(70, 255, 255, 255),
                            border: Border.all(
                                color: const Color.fromARGB(0, 0, 0, 0)),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                                             ),
                       ),
                    
                  ],
                ),
              ),
            ),
            Positioned.fill(
                child: SingleChildScrollView(
                    controller: _controller,
                    child: SizedBox(
                      height: height,
                    ))),
          ],
        ),
      ),
    );
  }
}
