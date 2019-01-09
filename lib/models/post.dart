class Post {
  int id;
  int userId;
  String title;
  String body;
  bool favourite;

  Post({this.id, this.userId, this.title, this.body}) {
    this.favourite = false;
  }

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
