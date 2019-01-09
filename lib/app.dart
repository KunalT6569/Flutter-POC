import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:poc/config/application.dart';
import 'package:poc/config/routes.dart';
import 'package:poc/pages/home-screen.dart';

class AppWidget extends StatelessWidget {
  final String title;

  AppWidget({this.title}) {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: Colors.greenAccent,
        primaryColor: Colors.teal,
        splashColor: Colors.tealAccent,
      ),
      home: HomePage(title: title),
      onGenerateRoute: Application.router.generator,
    );
  }
}
