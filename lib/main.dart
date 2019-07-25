import 'package:flutter/material.dart';

void main() {
  runApp(myApp);
}

var myApp1 = new Container(
    child: new Text("Hellow,world12",
        textDirection: TextDirection.ltr,
        style: new TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
    width: 100,
    height: 100,
    color: Colors.grey[300]);

var myApp = new Container(
    child: new Center(
        child: new Container(
            child: new Text("hellow",
                textDirection: TextDirection.ltr,
                style:
                    new TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
            padding: EdgeInsets.all(16.0),
            decoration: new BoxDecoration(color: Colors.red[400]))),
    width: 320.0,
    height: 240.0,
    color: Colors.grey[300]);
