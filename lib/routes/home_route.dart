import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:mbar/route.dart';

class HomeRoute {
  static String routeKey = '';
  static String home = '/$routeKey';

  static void routes(Routes router) {
    router.define(home, handler: Handler(handlerFunc: (context, param) {
      return Center(child: Text("Hello World"),);
    }));
  }
}
