// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_string_interpolations, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:pinprick/widget/addcomment.dart';
import 'package:provider/provider.dart';

import '../provider/post_provider.dart';

class coment2 extends StatelessWidget {
  final index1;
  final index2;

  const coment2({Key? key, required this.index1, this.index2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<postProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.posts[index1].comments.length,
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
                Text("${value.posts[index1].comments[index].content2}"),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 1,
                    top: 5,
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              value.changeCounter2(index);
                              value.changeFlage();
                            },
                            icon: Icon(Icons.favorite_border),
                          ),
                          Text("${value.posts[index1].comments[index].likes2}")
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
                                  index: index1,
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.comment,
                            ),
                          ),
                          Text("${value.posts[index1].comments.length}")
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
