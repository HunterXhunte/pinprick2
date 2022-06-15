// ignore_for_file: prefer_const_constructors, camel_case_types, annotate_overrides

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinprick/screen/homescreen.dart';

class welcomescreen extends StatefulWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), welcomescreen);
  }

  void welcomescreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: ((context) => homescreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
