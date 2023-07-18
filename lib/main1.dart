//import 'package:chat_app_practice_1/home.dart';
import 'package:flutter/material.dart';
import 'package:unifamm/home.dart';

void main() {
  runApp(Soobchestva());
}

class Soobchestva extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
