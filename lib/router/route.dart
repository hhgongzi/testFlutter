import 'package:flutter/material.dart';
import '../pages/search.dart';
import '../pages/middle.dart';
import '../pages/finish.dart';

final routes = {
  "/search": (context, {arguments}) => SearchPage(arguments: arguments),
  "/middle":(context)=>MiddlePage(),
  "/finish":(context)=>FinishPage(),
};

var OnGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
