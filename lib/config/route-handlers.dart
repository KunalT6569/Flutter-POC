import 'package:poc/pages/about-me-screen.dart';

import '../pages/home-screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

/**
 * HomePage Route
 * Path: '/'
 */
var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new HomePage();
});

/**
 * AboutMePage Route
 * Path: '/about-me/:name'
 */
var aboutMeRouteHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String name = params["name"]?.first;
  return new AboutMePage(
    name: name,
  );
});

// var demoFunctionHandler = new Handler(
//     type: HandlerType.function,
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//       String message = params["message"]?.first;
//       showDialog(
//         context: context,
//         builder: (context) {
//           return new AlertDialog(
//             title: new Text(
//               "Hey Hey!",
//               style: new TextStyle(
//                 color: const Color(0xFF00D6F7),
//                 fontFamily: "Lazer84",
//                 fontSize: 22.0,
//               ),
//             ),
//             content: new Text("$message"),
//             actions: <Widget>[
//               new Padding(
//                 padding: new EdgeInsets.only(bottom: 8.0, right: 8.0),
//                 child: new FlatButton(
//                   onPressed: () {
//                     Navigator.of(context).pop(true);
//                   },
//                   child: new Text("OK"),
//                 ),
//               ),
//             ],
//           );
//         },
//       );
//     });
