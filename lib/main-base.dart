import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
        child: Text(//文字颜色 对齐 overflow style
          'hellow flutter dart',
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 16.0,
              color: Color.fromRGBO(100, 200, 300, 1),
              fontWeight: FontWeight.w800),
        ),
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(//盒子边框 背景颜色 圆角
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        // padding: EdgeInsets.all(5),
        // transform: Matrix4.rotationZ(0.3),
        padding: EdgeInsets.fromLTRB(1, 2, 3, 4),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
