import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/About/case_1.dart';
import 'package:kretoss_webapp/appbartop.dart';
import 'package:kretoss_webapp/bottombar.dart';
import 'package:kretoss_webapp/drawer/drawer.dart';
import 'package:kretoss_webapp/estimate_project.dart';
import 'package:kretoss_webapp/About/idea/idea_content.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/MobileApp/service_path.dart';
import 'package:kretoss_webapp/services/expert_num.dart';

class Case_Page extends StatelessWidget {
  Case_Page({super.key, required this.index, required this.name});
  final int index;
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerMenu(),
      appBar: AppBarTop(
          child: SvgPicture.asset(
            'assets/svg/kretoss.svg',
            alignment: Alignment.centerLeft,
            height: 40,
            width: 40,
          ),
          preferredSize: Size.fromHeight(60)),
      floatingActionButton: FloatingBtn(),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffF4F7F9),
          child: Column(
            children: [
              ServicePath(text1: 'Home', text2: 'Case Study', text3: name),
              Case_1(
                select: index,
              ),
              EstimateProject(),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
