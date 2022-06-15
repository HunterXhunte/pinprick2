// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pinprick/widget/coment2.dart';
import 'package:provider/provider.dart';

import '../provider/post_provider.dart';

class Addcomments extends StatelessWidget {
  final int index;
  const Addcomments({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                "Add Comment",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * .6,
                  width: 400,
                  child: coment2(
                    index1: index,
                  ),
                ),
              ),
              Consumer<postProvider>(
                builder: (context, v, child) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    autofocus: true,
                    controller: v.commentController,
                    maxLines: 2,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  context.read<postProvider>().addcoment(
                      context.read<postProvider>().commentController.text,
                      index);
                  context.read<postProvider>().clearText2();
                  // Navigator.pop(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: ((context) => homepage()),
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
