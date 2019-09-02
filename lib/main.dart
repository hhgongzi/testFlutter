import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //去掉debug图标
        home: TabBarPage());
  }
}

class TabBarPage extends StatefulWidget {
  TabBarPage({Key key}) : super(key: key);

  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      print(_tabController.index);
    });
    void dispose() {
      this.dispose();
      _tabController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appBar"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: "rexiao",
            ),
            Tab(
              text: "tuijian",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text("rexiao"),
          ),
          Center(
            child: Text("tuijian"),
          ),
        ],
      ),
    );
  }
}

// class TabBar extends StatefulWidget {
//   TabBar({Key key}) : super(key: key);

//   _TabBarState createState() => _TabBarState();
// }

// class _TabBarState extends State<TabBar> with SingleTickerProviderStateMixin {
//   TabController _tabController;
//   @override
//   void initState() {
//     super.initState();
//     _tabController = new TabController(vsync: this, length: 2);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("tabBar"),
//         bottom: TabBar,
//       ),
//     );
//   }
// }
