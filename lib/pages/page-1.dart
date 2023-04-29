import 'dart:ui';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/rocket_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    await context
        .read<RocketProvider>()
        .getBaseData()
        .then((value) => CherryToast.success(
                title: Text('working'),
                displayTitle: false,
                description: Text('got the data'),
                animationType: AnimationType.fromTop,
                animationDuration: Duration(seconds: 3),
                autoDismiss: true)
            .show(context))
        .catchError((e) {
      CherryToast.error(
              title: Text('ERROR'),
              displayTitle: false,
              description: Text(e.toString()),
              animationType: AnimationType.fromTop,
              animationDuration: Duration(seconds: 3),
              autoDismiss: true)
          .show(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = context.watch<RocketProvider>().currentpage;
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
      body: Consumer<RocketProvider>(
        builder: (context, myType, child) {
          if (myType.currentpage == null) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Stack(
              children: [
                Center(
                  child: Container(
                    width: 500,
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
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 39, 39, 40)),
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "->",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 39, 39, 40)),
                          ),
                        ),
                      ],
                    )),
              ],
            );
          }
        },
      ),
    );
  }
}
