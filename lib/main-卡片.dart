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

class HomeContentAspe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}

class HomeContentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三"),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话"),
                subtitle: Text("185xxxx0765"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三"),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话"),
                subtitle: Text("185xxxx0765"),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        //动态列表使用map生成   
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 2,
                child: Image.network(
                    "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg",
                    fit: BoxFit.cover),
              ),
              ListTile(
                // leading: ClipOval(
                //   child: Image.network(
                //     "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg",
                //     fit: BoxFit.cover,
                //     height: 60,
                //     width: 60,
                //   ),
                // ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg"),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxxxx"),
              )
            ],
          ),
        )
      ],
    );
  }
}
