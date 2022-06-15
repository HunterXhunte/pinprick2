// ignore_for_file: prefer_is_empty, file_names, camel_case_types

import 'package:flutter/cupertino.dart';

import '../models.dart';

class postProvider extends ChangeNotifier {
  // List<String> todos = [];
  TextEditingController postController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  List<Post> posts = [];
  List<Comnet> coments = [];
  int counter = 0;

  bool flag = false;

  addpost(String todo) {
    if (todo.trim().length > 0) {
      posts.add(Post(content: todo, comments: []));

      notifyListeners();
    }
  }

  addcoment(String comment, int index) {
    if (comment.trim().length > 0) {
      posts[index].comments.add(Comnet(content2: comment));
      notifyListeners();
    }
  }

  clearText() {
    postController.clear();
    notifyListeners();
  }

  closetext() {
    commentController.dispose();
    notifyListeners();
  }

  clearText2() {
    commentController.clear();
    notifyListeners();
  }

  changeCounter(int index) {
    if (posts[index].likes == 0) {
      posts[index].likes++;
      notifyListeners();
    } else {
      posts[index].likes--;
    }
  }

  changeCounter2(int index) {
    if (posts[index].comments[index].likes2 == 0) {
      posts[index].comments[index].likes2++;
      notifyListeners();
    } else {
      posts[index].comments[index].likes2--;
    }
  }

  changeFlage() {
    flag = !flag;
    notifyListeners();
  }

  void check(Task task) {
    task.daon();
    notifyListeners();
  }
}

class Task {
  bool isDone;
  Task({required this.isDone});
  void daon() {
    isDone = !isDone;
  }
}
