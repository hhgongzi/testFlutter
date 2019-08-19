import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
//   final String msg;
  final arguments;
  final String a = "123";
  const SearchPage({Key key,this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("搜索页"),
          ),
          body: Text("搜索页面内容:balabala${arguments['id']}")),
    );
  }
}
