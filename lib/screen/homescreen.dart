// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pinprick/provider/tabs%20providers.dart';
import 'package:provider/provider.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final navigatoinkey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.photo_library_outlined,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.home,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.account_circle_outlined,
        size: 30,
        color: Colors.white,
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: Consumer<TabProvider>(
          builder: (context, value, child) => value.myTaps[value.currentIndex],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: navigatoinkey,
          color: Colors.teal,
          buttonBackgroundColor: Colors.teal[300],
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: context.watch<TabProvider>().currentIndex,
          items: items,
          onTap: (index) {
            context.read<TabProvider>().changeTab(index);
          },
        ),
      ),
    );
  }
}
