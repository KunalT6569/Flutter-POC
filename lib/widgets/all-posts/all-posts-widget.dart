import 'package:flutter/material.dart';
import 'package:poc/models/post.dart';
import 'package:poc/widgets/all-posts/post-single/post-single-widget.dart';

class AllPosts extends StatelessWidget {
  final List<Post> posts;
  final State state;

  AllPosts({this.posts, this.state});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: PageStorageKey('all-posts'),
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return new PostSingleWidget(post: posts[index], state: this.state);
      },
    );
  }
}
