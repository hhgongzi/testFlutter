import 'package:flutter/material.dart';
import 'pages/search.dart';

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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("搜索"),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SearchPage(arguments:"页面传值")));
            // Navigator.of(context).pop();返回
          },
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("表单"),
          onPressed: () {},
        )
      ],
    );
  }
}
