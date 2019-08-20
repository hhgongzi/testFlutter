import 'package:flutter/material.dart';
import 'router/route.dart';

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
      //   initialRoute: '/search',
      onGenerateRoute: OnGenerateRoute,
      //   routes: {"/search": (context) => SearchPage("router 命名路由")},
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
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => SearchPage("普通路由")));
            // Navigator.of(context).pop();返回
             Navigator.pushNamed(context, "/middle");
            // Navigator.of(context).pushReplacementNamed("/middle");//替换当前页面
          },
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("表单"),
          onPressed: () {
            Navigator.pushNamed(context, "/search", arguments: {"id": 123});
          },
        )
      ],
    );
  }
}
