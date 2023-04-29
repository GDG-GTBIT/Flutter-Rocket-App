import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        CupertinoButton(
                          color: const Color.fromARGB(88, 255, 255, 255),
                          onPressed: () {},
                          child: const Icon(Icons.newspaper),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CupertinoButton(
                          color: const Color.fromARGB(88, 255, 255, 255),
                          onPressed: () {},
                          child: const Icon(Icons.play_circle),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 700,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(70, 255, 255, 255),
                        border: Border.all(color: Colors.transparent),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
