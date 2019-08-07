import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("FLUTTER"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContentListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            "一级标题",
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text("二级标题"),
          trailing: Icon(Icons.settings),
        ),
        ListTile(
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
      ],
    );
  }
}

class HomeContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      // 垂直列表children widget width无效果
      children: <Widget>[
        Image.network(
            "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg"),
        Container(
          child: Text(
            "标题",
            textAlign: TextAlign.center,
          ),
          height: 40,
        ),
      ],
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180,
            color: Colors.deepPurple,
          ),
          Container(
            width: 180,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
