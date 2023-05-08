import 'package:flutter/material.dart';

class drawerData extends ChangeNotifier {
  int press = 0;
  int getPageIndex() => press;
  void updateTemp(int press) {
    this.press = press;
    notifyListeners();
  }

  int press1 = 0;
  int getPageIndex1() => press1;
  void updateTemp1(int press1) {
    this.press1 = press1;
    notifyListeners();
  }
}
