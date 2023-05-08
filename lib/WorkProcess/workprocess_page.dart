// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/WorkProcess/workprocess_content.dart';
import 'package:kretoss_webapp/WorkProcess/workprocess_step.dart';
import 'package:kretoss_webapp/bottombar.dart';
import 'package:kretoss_webapp/estimate_project.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import '../About/path.dart';
import '../appbartop.dart';
import '../drawer/drawer.dart';

class WorkProcess_Page extends StatelessWidget {
  const WorkProcess_Page({super.key});

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
          child: Container(
            color: const Color(0xffF3F6F9),
            child: Column(
              children: [
                Path(
                  text1: 'Home',
                  text2: 'Work Process',
                ),
                const WorkProcess_Content(),
                Container(
                  height: 15,
                  color: Colors.white,
                ),
                WorkProcess_Step(),
                const EstimateProject(),
                BottomBar()
              ],
            ),
          ),
        ));
  }
}
