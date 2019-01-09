import 'package:flutter/material.dart';
import 'package:poc/config/application.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Container(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Theme.of(context).secondaryHeaderColor,
                      radius: 40.0,
                      child: Icon(
                        Icons.person,
                        size: 40.0,
                      ),
                      foregroundColor: Theme.of(context).primaryColor,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Text(
                      'Kunal',
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Theme.of(context).secondaryHeaderColor),
                    )
                  ],
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('I LIKE FLUTTER'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Application.router.pop(context);
              Application.router.navigateTo(context, '/about-me/FLUTTER');
            },
          ),
        ],
      ),
    );
  }
}
