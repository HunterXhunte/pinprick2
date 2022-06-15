// ignore_for_file: camel_case_types

class Post {
  String? id;
  int likes;
  String content;
  List<Comnet> comments;
  Post({
    this.likes = 0,
    required this.content,
    required this.comments,
    this.id,
  });
}

class Comnet {
  String content2;
  int likes2;
  Comnet({required this.content2, this.likes2 = 0});
}
