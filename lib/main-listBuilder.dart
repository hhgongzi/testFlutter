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

class HomeContentFor extends StatelessWidget {
  final List<Widget> rlist = new List();
  List<Widget> _getData() {
    for (var i = 0; i < 5; i++) {
      rlist.add(ListTile(
        title: Text("text"),
      ));
    }
    return rlist;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}

class HomeContent extends StatelessWidget {
  final List list = new List();
  HomeContent() {
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(title: Text("title$i")));
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,//列表长度
      itemBuilder: (context, index) {
        return list[index];
      },
    );
  }
}
