import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:poc/config/application.dart';
import 'package:poc/models/post.dart';
import 'package:poc/widgets/app-drawer/app-drawer-content.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:poc/widgets/tab-content/favourite-tab-content.dart';
import 'package:poc/widgets/tab-content/home-tab-content.dart';

class HomePage extends StatefulWidget {
  final String title;
  final List<IconData> icons = [Icons.home, Icons.favorite];

  HomePage({this.title});

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<Post> posts = [];

  HomePageState() {
    getPosts().then((posts) {
      setState(() {
        this.posts = posts;
      });
    });
  }

  @override
  initState() {
    super.initState();
  }

  Future<List<Post>> getPosts() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/posts');
    return parsePosts(response.body);
  }

  List<Post> parsePosts(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Post>((json) => Post.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    Application.homeScaffoldContext = context;

    return new DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: new Drawer(child: DrawerWidget()),
        appBar: new AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: widget.icons.map((icon) {
              return Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(icon),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          // key: PageStorageKey('TabBarView'),
          children: <Widget>[
            HomeTabContent(
              posts: this.posts,
              homeScreenWidgetState: this,
            ),
            FavouriteTabContent(
              posts: this.posts.where((post) => post.favourite).toList(),
              homeScreenWidgetState: this,
            )
          ],
        ),
      ),
    );
  }
}
