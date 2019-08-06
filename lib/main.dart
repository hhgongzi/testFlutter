import "package:flutter/material.dart";

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

class HomeContentImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg",
          alignment: Alignment.bottomCenter,
          //   color: Colors.grey,
          colorBlendMode: BlendMode.screen,
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(color: Colors.blue),
      ),
    );
  }
}

class HomeContentCirlImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(150),
            image: DecorationImage(
                image: NetworkImage(
                    "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}

class HomeContentClipOval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          //根据图形比例 生成圆形或椭圆形
          child: Image.network(
            "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg",
          ),
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Image.asset("images/pic.png"),
        ),
    );
  }
}
