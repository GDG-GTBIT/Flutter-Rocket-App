import 'package:flutter/cupertino.dart';
import './pages/page-2.dart';
import 'pages/page-2.1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Page2(),
    );
  }
}
