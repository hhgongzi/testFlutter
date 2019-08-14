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

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text("nihao"),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {},
        )
      ],
    );
  }
}
