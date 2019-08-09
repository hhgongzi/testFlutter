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
        body: Layout(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  final List<Widget> list = new List();
  List<Widget> _getData() {
    for (var i = 0; i < 5; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "hellow",
          //   textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        // height: 400,高度无效
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.7, //height/width 比例 通过该比例调整子widget的height
      children: _getData(),
    );
  }
}

class LayoutColumn extends StatelessWidget {
  final List<Widget> list = new List();
  List<Widget> _getData() {
    for (var i = 0; i < 5; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "hellow",
          //   textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        // height: 400,高度无效
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //column 不会平铺
        children: <Widget>[
          Text("hellow"),
          Text("hellow"),
          Text("hellow"),
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 1), width: 1)),
    );
  }
}

class Layout extends StatelessWidget {
  final List<Widget> list = new List();
  Widget _getData(context,index) {
    for (var i = 0; i < 5; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "hellow",
          //   textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        // height: 400,高度无效
      ));
    }
    return Container(
        child: Column(
            children: <Widget>[
                Text("hellow")
            ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          itemCount: 10,
          itemBuilder: _getData,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1
          )
      ),
    );
  }
}
