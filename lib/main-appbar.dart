import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //去掉debug图标
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("title"),
              backgroundColor: Colors.red,
              //   leading: Icon(Icons.menu),
              //   leading: IconButton(
              //     icon: Icon(Icons.menu),
              //     onPressed: () {
              //       print("menu");
              //     },
              //   ),
              //   actions: <Widget>[
              //     IconButton(
              //       icon: Icon(Icons.search),
              //       onPressed: () {
              //         print("search");
              //       },
              //     )
              //   ],
              //   title: Row(
              //     children: <Widget>[
              //       Expanded(
              //         child: TabBar(
              //           tabs: <Widget>[
              //             Tab(
              //               text: "热门",
              //             ),
              //             Tab(
              //               text: "推荐",
              //             ),
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              bottom: TabBar(
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.black,
                  indicatorColor: Colors.yellow,
                  indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  Tab(
                    text: "热门",
                  ),
                  Tab(
                    text: "推荐",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[Text("热门"), Text("推荐")],
            ),
          ),
        ));
  }
}

class HomeContent extends StatelessWidget {
//   const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("txt1"),
    );
  }
}
