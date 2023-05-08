import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kretoss_webapp/Portfolio/project.dart';
import 'package:kretoss_webapp/Portfolio/project_list.dart';
import 'package:kretoss_webapp/appbartop.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import '../appbartop.dart';
import '../About/path.dart';
import '../bottombar.dart';
import '../drawer/drawer.dart';
import '../estimate_project.dart';
import './project.dart';

// ignore: must_be_immutable
class Portfolio extends StatelessWidget {
  Portfolio({super.key, required this.isAppBar});
  bool isAppBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerMenu(),
      appBar: (isAppBar == false)
          ? null
          : AppBarTop(
              preferredSize: const Size.fromHeight(55),
              child: SvgPicture.asset(
                'assets/svg/kretoss.svg',
                alignment: Alignment.centerLeft,
                height: 40,
                width: 40,
              ),
            ),
      floatingActionButton: (isAppBar == false) ? null : FloatingBtn(),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xffF3F6F9),
          child: Column(
            children: [
              Path(
                text1: 'Home',
                text2: 'Portfolio',
              ),
              const Project(),
              Project_List(),
              const EstimateProject(),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
