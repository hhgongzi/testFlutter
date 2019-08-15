import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePageStaless extends StatelessWidget {
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text("${this.countNum}"),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            this.countNum++;
            print(this.countNum);
          },
        )
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Chip(
          label: Text('${this.countNum}'),
        ),
        RaisedButton(
          child: Text('anniu'),
          onPressed: () {
            setState(() {
              this.countNum++;
            });
          },
        )
      ],
    );
  }
}
