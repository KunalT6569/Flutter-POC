import 'package:flutter/material.dart';
import 'package:poc/models/post.dart';
import 'package:poc/widgets/all-posts/all-posts-widget.dart';

class FavouriteTabContent extends StatelessWidget {
  final State homeScreenWidgetState;
  List<Post> posts;

  FavouriteTabContent({this.posts, this.homeScreenWidgetState});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new AllPosts(
        posts: this.posts,
        state: this.homeScreenWidgetState,
      ),
    );
  }
}
