import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //去掉debug图标
        home: Scaffold(
          appBar: AppBar(
            title: Text("flutter"),
          ),
          body: Text("txt"),
        ));
  }
}
