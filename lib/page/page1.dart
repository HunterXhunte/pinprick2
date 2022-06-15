// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:pinprick/provider/todo%20provider.dart';
import 'package:provider/provider.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Consumer<postProvider>(
        builder: (context, value, child) => Column(
          children: [
            Text("${value.counter}"),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
