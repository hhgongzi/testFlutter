import 'package:flutter/material.dart';

class MiddlePage extends StatelessWidget {
//   final String msg;
  final arguments;
  final String a = "123";
  const MiddlePage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("MIDDLE"),
      ),
      body: RaisedButton(
        child: Text("搜索"),
        onPressed: () {
        //   Navigator.pushNamed(context, "/finish");
          Navigator.of(context).pushReplacementNamed("/finish");
        },
      ),
    ));
  }
}
