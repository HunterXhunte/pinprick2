// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:pinprick/provider/post_provider.dart';
import 'package:provider/provider.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  bool? ischaekd = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: Colors.blue,
              value: ischaekd,
              onChanged: (newvalue) {
                context.read<postProvider>().changeFlage();
              },
            ),
            SizedBox(
              width: 5,
            ),
            Text("data1")
          ],
        ),
      ],
    );
  }
}
