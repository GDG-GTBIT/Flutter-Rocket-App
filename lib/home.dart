import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rocket App",
          style: TextStyle(fontFamily: 'oswald', fontSize: 50),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.account_box_rounded)),
        ],
        flexibleSpace: Container(color: Colors.black),
        bottom: PreferredSize(
          child: Container(color: Colors.black),
          preferredSize: Size(double.infinity, 20),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: 350,
              child: Center(
                child: SizedBox(
                  width: 300,
                  height: 30,
                  child: TextField(
                      decoration: InputDecoration(
                          labelText: "Enter text",
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder())),
                ),
              ),
            ),
            top: 50,
            left: 15,
          ),
          Center(
            child: Container(
              width: 500,
              margin: EdgeInsets.all(10),
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color.fromARGB(255, 255, 99, 99),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Color.fromARGB(105, 89, 89, 89),
                    offset: Offset(7.5, 7.5),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "<-",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: Colors.black,
                      minimumSize: Size(100, 50),
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "->",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: Colors.black,
                      minimumSize: Size(100, 50),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
