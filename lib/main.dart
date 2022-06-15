// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinprick/provider/tabs%20providers.dart';
import 'package:pinprick/provider/post_provider.dart';
import 'package:pinprick/screen/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TabProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => postProvider(),
        ),
      ],
      child: MaterialApp(
        home: homescreen(),
      ),
    );
  }
}
