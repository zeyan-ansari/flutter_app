import 'package:flutter/material.dart';
import 'package:flutter_app/splash.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quickstar',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:splashscreen() ,
    );
  }
}

