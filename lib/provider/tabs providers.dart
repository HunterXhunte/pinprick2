// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:pinprick/page/homepage.dart';
import 'package:pinprick/page/page1.dart';
import 'package:pinprick/page/page3.dart';

class TabProvider extends ChangeNotifier {
  List<Widget> myTaps = [page1(), homepage(), page3()];
  int currentIndex = 1;
  changeTab(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
