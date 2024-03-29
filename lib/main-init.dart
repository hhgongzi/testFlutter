import 'dart:core';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

var style = new TextStyle(fontSize: 28.0, fontWeight: FontWeight.w900);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("hellow",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 40.0, color: Color.fromRGBO(195, 166, 139, 1))),
    );
  }
}

/*
var myApp1 = new Container(
    child: new Text("Hellow,world12",
        textDirection: TextDirection.ltr, style: style),
    width: 100,
    height: 100,
    color: Colors.grey[300]);

var myApp2 = new Container(
    child: new Center(
        child: new Container(
            child: new Text("hellow",
                textDirection: TextDirection.ltr, style: style),
            padding: EdgeInsets.all(16.0),
            width: 200,
            decoration: new BoxDecoration(color: Colors.red[400]))),
    color: Colors.grey[300]);

var myApp3 = new Container(
    child: new Stack(
      children: [
        new Positioned(
          child: Container(
            child: new Text(
              "he",
              textDirection: TextDirection.ltr,
            ),
          ),
          left: 100,
          top: 20,
        ),
      ],
      textDirection: TextDirection.ltr,
    ),
    color: Colors.grey[300]);
var myApp = new Container(
  child: new Center(
    child: new Transform(
      child: new Container(
        child: new Text(
          'hellow511R1',
          style: new TextStyle(fontSize: 30),
          textDirection: TextDirection.ltr,
        ),
      ),
      alignment: Alignment.center,
      transform: new Matrix4.identity()..rotateZ(15 * 3.1416 / 180),
    ),
  ),
);
*/
