import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/Packages/package.dart';
import 'package:kretoss_webapp/estimate_project.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import '../appbartop.dart';
import '../bottombar.dart';
import '../drawer/drawer.dart';

// ignore: camel_case_types
class Package_Page extends StatelessWidget {
  const Package_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerMenu(),
      appBar: AppBarTop(
        preferredSize: const Size.fromHeight(55),
        child: SvgPicture.asset(
          'assets/svg/kretoss.svg',
          alignment: Alignment.centerLeft,
          height: 40,
          width: 40,
        ),
      ),
      floatingActionButton: FloatingBtn(),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          color: const Color(0xffF3F6F9),
          child: Column(
            children: [const Package(), const EstimateProject(), BottomBar()],
          ),
        ),
      ),
    );
  }
}
