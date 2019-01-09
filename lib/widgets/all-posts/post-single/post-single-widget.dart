import 'package:flutter/material.dart';
import 'package:poc/config/application.dart';
import 'package:poc/models/post.dart';

class PostSingleWidget extends StatelessWidget {
  final Post post;
  final State state;

  PostSingleWidget({this.post, this.state});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.7,
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                post.title,
                style: new TextStyle(fontSize: 22.0),
              ),
              Divider(),
              Text(post.body),
              ListTile(
                leading: post.favourite
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(Icons.favorite),
                title: post.favourite
                    ? Text("Remove from Favourites")
                    : Text("Mark as Favourite"),
                onTap: () {
                  this.state.setState(() {
                    post.favourite = !post.favourite;
                  });
                  Scaffold.of(context).showSnackBar(favouritedSnackBar());
                },
                // child: FlatButton.icon(
                //   icon: Icon(
                //     Icons.favorite,
                //     color: post.favourite
                //         ? Colors.red
                //         : Theme.of(context).primaryColor,
                //   ),
                //   label: post.favourite
                //       ? Text("Remove from Favourites")
                //       : Text("Mark as Favourite"),
                //   onPressed: () {
                //     print("ADDED TO FAV");
                //     Widget snackBar =
                //         SnackBar(content: Text('Added to your favourites'));
                //     Scaffold.of(context).showSnackBar(snackBar);
                //     this.state.setState(() {
                //       post.favourite = !post.favourite;
                //     });
                //   },
                // ),
              )
            ],
          ),
        ),
      ),
      margin: EdgeInsets.only(
        top: 2.0,
        bottom: 2.0,
      ),
    );
  }

  SnackBar favouritedSnackBar() {
    Text text = !post.favourite
        ? Text('Removed from your favourites')
        : Text('Added to your favourites');
    return SnackBar(
      content: text,
      duration: Duration(
        seconds: 1,
        milliseconds: 500,
      ),
    );
  }
}
