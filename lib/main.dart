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
        backgroundColor: Colors.grey,
      ),
    );
  }
}

class HomeContentPadding extends StatelessWidget {
  //padding 组件
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(5),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5),
          child: Image.network(
              'http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Image.network(
              'http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Image.network(
              'http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Image.network(
              'http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg',
              fit: BoxFit.cover),
        ),
      ],
    );
  }
}

class HomeContentFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 450,
      color: Colors.pink,
      //   child: Row(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //flex 横轴
        crossAxisAlignment: CrossAxisAlignment.start, //flex 纵轴
        children: <Widget>[
          IconContainer(Icons.home, color: Colors.red, size: 40.0),
          IconContainer(Icons.search, color: Colors.orange, size: 40.0),
          IconContainer(Icons.dashboard, color: Colors.blue, size: 40.0),
          IconContainer(Icons.face, color: Colors.green, size: 40.0),
        ],
      ),
    );
  }
}

class HomeContentFlexElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconContainer(Icons.dashboard, color: Colors.blue, size: 40.0),
        IconContainer(Icons.edit, color: Colors.green, size: 40.0),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home, color: Colors.red, size: 40.0),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.search, color: Colors.orange, size: 40.0),
        ),
      ],
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            width: 100,
          height: 200,
          color: Colors.black,
          child: Text("hellow"),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                  height: 180,
                  padding: EdgeInsets.fromLTRB(0,0,10,0),
                  child: Image.network(
                    "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Image.network(
                        "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 85,
                      child: Image.network(
                        "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  final double size;
  final Color color;
  final IconData icon;
  IconContainer(this.icon, {this.color = Colors.white, this.size = 36.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
