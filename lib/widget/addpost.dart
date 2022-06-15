// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pinprick/page/homepage.dart';
import 'package:pinprick/widget/checkbox.dart';
import 'package:provider/provider.dart';

import '../provider/post_provider.dart';

class Addpost extends StatefulWidget {
  const Addpost({Key? key}) : super(key: key);

  @override
  State<Addpost> createState() => _AddpostState();
}

class _AddpostState extends State<Addpost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              "Add Post",
              style: TextStyle(
                fontSize: 30,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Column(
                  children: [],
                ),
              ],
            ),
            Consumer<postProvider>(
              builder: (context, v, child) => TextField(
                autofocus: true,
                controller: v.postController,
                maxLines: 4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                category(),
                category(),
              ],
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
                context
                    .read<postProvider>()
                    .addpost(context.read<postProvider>().postController.text);
                context.read<postProvider>().clearText();
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => homepage()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
