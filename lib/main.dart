import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; //国际化

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter'),
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
  var now = new DateTime.now();
  var _date = new DateTime.now();
  var _time = TimeOfDay(hour: 12, minute: 20);
  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    ).then((result) {
      print(result);
      setState(() {
        _date = result;
      });
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    setState(() {
      _time = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text("time:${now.millisecondsSinceEpoch}"),
        ),
        Container(
          child: Text("time:${formatDate(now, [yyyy, '-', mm, '-', dd])}"),
        ),
        InkWell(
          child: Row(
            children: <Widget>[
              Text("${formatDate(_date, [yyyy, '-', mm, '-', dd])}"),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          onTap: _showDatePicker,
        ),
        InkWell(
          child: Row(
            children: <Widget>[
              Text("${_time.format(context)}"),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          onTap: _showTimePicker,
        ),
      ],
    );
  }
}
