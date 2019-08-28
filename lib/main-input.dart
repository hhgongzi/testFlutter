import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

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

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var username = new TextEditingController();
  var flag = true;
  var sex;
  var switchV;
  void initState() {
    super.initState();
    username.text = "";
    sex = 2;
    switchV = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(),
          SizedBox(
            height: 20,
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: "请输入",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "用户名",
              border: OutlineInputBorder(),
              icon: Icon(Icons.people),
            ),
            controller: username,
            onChanged: (value) {
              username.text = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: RaisedButton(
              child: Text("click"),
              onPressed: () {
                print(username.text);
              },
            ),
          ),
          Container(
            child: Checkbox(
              value: flag,
              onChanged: (v) {
                setState(() {
                  flag = v;
                });
              },
              activeColor: Colors.orange,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CheckboxListTile(
            value: flag,
            onChanged: (v) {
              setState(() {
                flag = v;
              });
            },
            title: Text("title"),
            subtitle: Text("副标题"),
            secondary: Icon(Icons.help),
            selected: this.flag,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Radio(
                value: 1,
                onChanged: (v) {
                  setState(() {
                    sex = v;
                  });
                },
                groupValue: sex,
              ),
              Radio(
                value: 2,
                onChanged: (v) {
                  setState(() {
                    sex = v;
                  });
                },
                groupValue: sex,
              ),
              Text("radioValue=>${this.sex}")
            ],
          ),
          //   RadioListTile与CheckBoxlistTile基本一致
          SizedBox(
            height: 20,
          ),
          Switch(
            value: switchV,
            onChanged: (v) {
              setState(() {
                switchV = v;
              });
            },
          ),
        ],
      ),
    );
  }
}
