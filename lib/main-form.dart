import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String username;
  int sex = 0;
  List hobby = [
    {"checked": false, "title": "chi"},
    {"checked": true, "title": "shui"}
  ];
  List<Widget> getHobby() {
    List<Widget> tem = [];
    for (var i = 0; i < hobby.length; i++) {
      //   tem.add();
      tem.add(Row(
        children: <Widget>[
          Text(hobby[i]["title"]),
          Checkbox(
            value: hobby[i]["checked"],
            onChanged: (value) {
              setState(() {
                hobby[i]["checked"] = value;
              });
            },
          )
        ],
      ));
    }
    return tem;
  }

  void _sexChange(value) {
    setState(() {
      sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "用户信息"),
              onChanged: (v) {
                setState(() {
                  username = v;
                });
              },
            ),
            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                  value: 1,
                  onChanged: _sexChange,
                  groupValue: sex,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("女"),
                Radio(
                  value: 0,
                  onChanged: _sexChange,
                  groupValue: sex,
                ),
              ],
            ),
            Column(
              children: this.getHobby(),
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text("click"),
                onPressed: () {
                  print("username=>${this.username}");
                  print("sex=>${this.sex}");
                  print("hobby=>${this.hobby}");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
