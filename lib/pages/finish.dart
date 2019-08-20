import 'package:flutter/material.dart';

class FinishPage extends StatelessWidget {
//   final String msg;
  final arguments;
  final String a = "123";
  const FinishPage({Key key,this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("完成页"),
          ),
          body: Text("FINISH")),
    );
  }
}
