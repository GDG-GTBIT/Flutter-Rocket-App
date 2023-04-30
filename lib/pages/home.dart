import 'dart:ui';

import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rocket_app/provider/rocket_provider.dart';
import 'package:svg_path_parser/svg_path_parser.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
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

  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: AssestImage("images/bg.jpeg"), fit: BoxFit.cover),
      //   ),
      // ),
      // backgroundColor: ,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 170,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Expanded(
                  child: Row(
                    children: [
                      Image.asset("assets/Vector_2.png", fit: BoxFit.contain),
                      Expanded(
                        child: Image.asset("assets/rockett.png",
                            fit: BoxFit.contain),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // SizedBox(
            //   height: 20,
            // ),

            // sliver items

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      //onChanged: (value) => _runFilter(value),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 20.0),
                        // labelStyle: TextStyle(color: Colors.blue),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: const Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                        //prefix: Icon(Icon.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),

            // SliverToBoxAdapter(
            //   child: GridView.builder(
            //       itemCount: 10,
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 5),
            //       itemBuilder: (context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Container(
            //             height: 50,
            //             width: 50,
            //             color: Colors.blue,
            //           ),
            //         );
            //       }),
            // ),

            // SliverToBoxAdapter(
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(20.0),
            //       child: Container(
            //         height: 400,
            //         color: Colors.deepPurple[300],
            //       ),
            //     ),
            //   ),
            // ),

            // SliverToBoxAdapter(
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(20.0),
            //       child: Container(
            //         height: 400,
            //         color: Colors.deepPurple[300],
            //       ),
            //     ),
            //   ),
            // ),

            // SliverPadding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            ConsumerWidget(),
            //),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(111, 66, 31, 82),
        child: Icon(
          Icons.add,
          size: 40.0,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Color.fromARGB(111, 66, 31, 82),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Home icon
                  MaterialButton(
                    minWidth: 70,
                    onPressed: () {
                      // SetState(() {
                      //   currentScreen =
                      // });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        // Text('')
                      ],
                    ),
                  ),
                  //live video icon
                  MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      // SetState(() {
                      //   currentScreen =
                      // });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.live_tv,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        // Text('')
                      ],
                    ),
                  ),
                ],
              ),

              //Right side icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //stories
                  MaterialButton(
                    minWidth: 90,
                    onPressed: () {
                      // SetState(() {
                      //   currentScreen =
                      // });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.amp_stories_rounded,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        // Text('')
                      ],
                    ),
                  ),
                  //down arrow icon
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      // SetState(() {
                      //   currentScreen =
                      // });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_circle_down_rounded,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        // Text('')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConsumerWidget extends StatelessWidget {
  const ConsumerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<RocketProvider>(
      builder: (context, myType, child) {
        if (myType.currentpage == null) {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }
        return SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 40,
            crossAxisSpacing: 50,
          ),
          delegate: SliverChildBuilderDelegate(
            childCount: myType.currentpage!.results!.length,
            // background:
            //   Image.asset("assets/bg.jpeg", fit: BoxFit.fill,)
            // image: DecorationImage(
            // image: AssetImage(
            //   'images/bg.jpeg',
            // )
            // )
            (context, index) {
              myType.currentpage!.results![index].featureImage;
              return ClipPath(
                clipper: MyClipper(),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // color: Colors.purple,
                    margin: EdgeInsets.all(08.0),
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      // color: Colors.pink,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        // borderRadius: BorderRadius.circular(20.0),
                        // borderRadius:  BorderRadius.vertical(
                        //   top:  Radius.circular(50),
                        //   bottom:  Radius.circular(50),
                        // ),
                        image: NetworkImage(
                            myType.currentpage!.results![index].featureImage!),
                      ),
                    ),
                    child: Text(
                      "Lorem ipsum",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  final String pathData;

  MyClipper(
      {this.pathData =
          "M0 20C0 8.95431 8.9543 0 20 0L121.309 0C132.993 0 142.19 9.97369 141.243 21.6197L131.493 141.62C130.65 152.003 121.977 160 111.559 160L20 160C8.9543 160 0 151.046 0 140L0 20Z"});
  @override
  Path getClip(Size size) {
    Path path = parseSvgPath(pathData);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
