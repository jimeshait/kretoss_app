import 'package:flutter/material.dart';

class tokenData extends ChangeNotifier {
  String token = '';
  late BuildContext context;
  //int getPageIndex() => press;
  void updateTemp(String token, BuildContext context) {
    this.token = token;
    notifyListeners();
  }
}
