import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import 'routes/home_route.dart';

class Routes {
  static void redirect(BuildContext context, String path) =>
      router.navigateTo(context, path, transition: TransitionType.fadeIn);

  static final router = FluroRouter();

  Routes() {
    HomeRoute.routes(this);

    router.notFoundHandler = Handler(handlerFunc: (context, param) => Center());
  }

  Route<dynamic>? generator(routeSettings) => router.generator(routeSettings);

  void define(
    String routePath, {
    required Handler? handler,
    TransitionType? transitionType,
  }) =>
      router.define(routePath,
          handler: handler, transitionType: transitionType);
}
