import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class AppBarTop extends PreferredSize {
  const AppBarTop(
      {super.key, required super.preferredSize, required super.child});
  @override
  Widget build(BuildContext context) => AppBar(
        title: Align(alignment: Alignment.centerLeft, child: child),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      );
}
