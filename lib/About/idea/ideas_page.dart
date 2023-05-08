import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/appbartop.dart';
import 'package:kretoss_webapp/bottombar.dart';
import 'package:kretoss_webapp/drawer/drawer.dart';
import 'package:kretoss_webapp/estimate_project.dart';
import 'package:kretoss_webapp/About/idea/idea_content.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/MobileApp/service_path.dart';
import 'package:kretoss_webapp/services/expert_num.dart';

class Ideas_Page extends StatelessWidget {
  const Ideas_Page({super.key});

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
              ServicePath(
                  text1: 'Home',
                  text2: 'Case Study',
                  text3: 'We Convert your Ideas into Reality'),
              Ideas_Content(),
              Container(
                // height: 1280,
                // width: 500,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 45.0, bottom: 35),
                        child: Text(
                          'Work We Finished',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff292930)),
                        ),
                      ),
                    ),
                    Expert_Num()
                  ],
                ),
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
