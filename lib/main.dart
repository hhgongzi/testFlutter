import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("普通按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10, //阴影
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  print("普通按钮");
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("自适应按钮"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 10, //阴影
                    splashColor: Colors.grey, //长按 水波效果
                    onPressed: () {
                      print("自适应按钮");
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("flatbutton"),
                onPressed: () {
                  print("flatbutton");
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                child: Text("flatbutton"),
                onPressed: () {
                  print("OutlineButton");
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  print("IconButton");
                },
              )
            ],
          ),
          ButtonBar(
            children: <Widget>[
              RaisedButton(
                child: Text("buttonbar"),
                onPressed: () {},
              ),
              FloatingActionButton(
                child: Text("FloatingActionButton"),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

//自定义按钮
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  const MyButton({Key key, this.text, this.pressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: RaisedButton(
        child: Text(text),
        onPressed: pressed,
      ),
    );
  }
}
