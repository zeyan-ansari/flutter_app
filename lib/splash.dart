import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState(){

    super.initState();
    Timer(Duration(seconds:5 ),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homepage(),
      ));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


     body: Container(


        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple,Colors.pink,Colors.orange, Colors.yellow,Colors.cyanAccent ])),
      child: Center(
        child: Text('Quizz Star', style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold,color:Colors.white,fontFamily: "Satisfy")),
      ),


      ),

    );
  }
}
