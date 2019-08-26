import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('appbar'),
        ),
        body: Text("appbar body"),
        // drawer: Drawer(
        //     child: Text("drawer"),
        // ),
        // endDrawer: Drawer(
        //     child: Text('end drawer'),
        // ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
            //   DrawerHeader(
            //     child: Text("header"),
            //     decoration: BoxDecoration(color: Colors.yellow),
            //   ),
            //   Row(
            //     children: <Widget>[
            //       Expanded(
            //         child: DrawerHeader(
            //           child: Text("自定义header"),
            //           decoration: BoxDecoration(
            //             //   color: Colors.green,
            //               image: DecorationImage(
            //                   image: NetworkImage(
            //                       "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg"))),
            //         ),
            //       )
            //     ],
            //   ),
            Row(
                children: <Widget>[
                    Expanded(
                        child: UserAccountsDrawerHeader(
                            accountName: Text("head"),
                            accountEmail: Text("xxx@163.com"),
                            currentAccountPicture: CircleAvatar(
                                backgroundImage: NetworkImage("http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg"),
                            ),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage("http://img95.699pic.com/photo/50029/9094.jpg_wh860.jpg")
                                )
                            ),
                            otherAccountsPictures: <Widget>[],
                        ),
                    )
                ],
            ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text("home"),
              ),
              Divider(), //线
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text("settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
