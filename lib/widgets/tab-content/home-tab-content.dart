import 'package:flutter/material.dart';
import 'package:poc/models/post.dart';
import 'package:poc/widgets/all-posts/all-posts-widget.dart';

import 'package:poc/widgets/common/loading-widget.dart';

class HomeTabContent extends StatelessWidget {
  final State homeScreenWidgetState;
  List<Post> posts;

  HomeTabContent({this.posts, this.homeScreenWidgetState});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: new PageStorageKey('homeTabContent'),
      child: Center(
          child: posts.length > 0
              ? new AllPosts(
                  posts: posts,
                  state: this.homeScreenWidgetState
                )
              : LoadingWidget()),
    );
  }
}
