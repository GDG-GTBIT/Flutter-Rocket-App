import 'package:flutter/cupertino.dart';
import 'package:rocket_app/pages/page-1.dart';
import 'package:rocket_app/pages/page-2.1.dart';
import 'pages/page-3.dart';
import './provider/rocket_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RocketProvider>(
          create: (context) => RocketProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Page2(),
      ),
    );
  }
}
