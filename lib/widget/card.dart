// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/post_provider.dart';
import 'addcomment.dart';

class caard extends StatelessWidget {
  const caard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<postProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.posts.length,
          itemBuilder: (context, index) => Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 7,
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text("${value.posts[index].content}"),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 1,
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              value.changeCounter(index);
                              value.changeFlage();
                            },
                            icon: Icon(Icons.favorite_border),
                          ),
                          Text("${value.posts[index].likes}")
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => Addcomments(
                                  index: index,
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.comment,
                            ),
                          ),
                          Text("${value.posts[index].comments.length}")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}










                // ElevatedButton(
                //   onPressed: () {
                //     value.removeTodo(index);
                //   },
                //   style: ElevatedButton.styleFrom(primary: Colors.red),
                //   child: Text("Delete"),
                // )