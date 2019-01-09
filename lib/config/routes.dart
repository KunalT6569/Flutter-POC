import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:poc/config/route-handlers.dart';
import './route-handlers.dart';

class Routes {
  static String root = "/";
  static String aboutMePage = "/about-me/:name";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(root, handler: rootHandler);
    router.define(aboutMePage, handler: aboutMeRouteHandler);
  }
}
