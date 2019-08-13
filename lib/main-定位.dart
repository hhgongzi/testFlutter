import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 300,
      height: 400,
      color: Colors.red,
      child: Stack(
        // alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.home,
              size: 40,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.search,
              size: 40,
              color: Colors.green,
            ),
          ),
          Align(
            alignment: Alignment(-1, 1),
            child: Icon(
              Icons.dashboard,
              size: 40,
              color: Colors.orange,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Icon(
              Icons.radio,
              size: 40,
              color: Colors.green,
            ),
          )
        ],
      ),
    ));
  }
}
