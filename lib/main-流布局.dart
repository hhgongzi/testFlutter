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
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 20,
        runSpacing: 20,
        // direction: Axis.vertical,
        // alignment: WrapAlignment.spaceAround,
        children: <Widget>[
            MyButton("hellow"),
            MyButton("hellowhellow"),
            MyButton("hellow"),
            MyButton("hellowhellow"),
            MyButton("hellowwer"),
            MyButton("hellow"),
            MyButton("hellowhellowhellow"),
            MyButton("hellow"),
            MyButton("hel"),
        ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
