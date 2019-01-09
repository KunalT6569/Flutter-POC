import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  final String name;
  AboutMePage({this.name});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.tealAccent,
              Colors.lightGreen,
              Colors.greenAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: PageView(
          children: <Widget>[
            Center(
              child: Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.code,
                        color: Colors.green,
                        size: 80.0,
                      ),
                      Text(
                        name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
