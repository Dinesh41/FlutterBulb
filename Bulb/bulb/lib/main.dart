import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'screens/bulb/bulb.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => Home(),
        '/bulb': (context) => Bulb(),
      },
    );
  }
}
