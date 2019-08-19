import 'package:flutter/material.dart';
import 'pages/search.dart';

void main() => runApp(MyApp());















class MyApp extends StatelessWidget {
  final routes = {"/search": (context,{arguments}) => SearchPage(arguments:arguments)};
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter"),
        ),
        body: HomePage(),
      ),
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
        return null;
      },
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
          },
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("表单"),
          onPressed: () {
            Navigator.pushNamed(context, "/search",arguments: {
                "id":123
            });
          },
        )
      ],
    );
  }
}
