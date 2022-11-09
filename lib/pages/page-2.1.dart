import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late ScrollController mainScroll;

  @override
  void initState() {
    mainScroll = ScrollController()
      ..addListener(() {
        setscroll();
      });
    super.initState();
  }

  double offset = 0;

  void setscroll() {
    setState(() {
      offset = mainScroll.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var heigt = size.height * 2;

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 2, 3, 12),
        child: Stack(children: [
          Positioned(
              bottom: offset * 0.3,
              right: 0,
              left: 0,
              child: Image.asset('assets/image5.png')),
          Positioned(
              bottom: offset * 0.5,
              right: 0,
              left: 0,
              child: Image.asset('assets/star1.png')),
          Positioned(
            bottom: offset * 0.7,
            child: Column(
              children: [
                GlassmorphicContainer(
                  width: 250,
                  height: 350,
                  borderRadius: 30,
                  blur: 31,
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
                      const Color.fromARGB(255, 53, 213, 45).withOpacity(0.5),
                      const Color.fromARGB(255, 6, 54, 4).withOpacity(0.5),
                    ],
                  ),
                  child: null,
                ),
                const SizedBox(
                  height: 35,
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
              ],
            ),
          ),
          Positioned(
            top: size.height + (offset * -1 * 1),
            child: Container(
              alignment: Alignment.center,
              width: size.width,
              height: size.height * 1.5,
              color: const Color.fromARGB(82, 255, 255, 255),
              child: Column(
                children: const [
                  Text('Date'),
                  Text('Varient'),
                  Text('Description'),
                ],
              ),
            ),
          ),
          Positioned.fill(
              child: SingleChildScrollView(
            controller: mainScroll,
            child: SizedBox(height: heigt),
          )),
        ]),
      ),
    );
  }
}
