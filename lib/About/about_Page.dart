import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/About/ideas.dart';
import 'package:kretoss_webapp/About/team.dart';
import 'package:kretoss_webapp/About/values.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/pagescroll.dart';
import 'package:kretoss_webapp/pagescroll2.dart';
import '../appbartop.dart';
import '../drawer/drawer.dart';
import './path.dart';
import './content.dart';
import './ideas.dart';
import '../estimate_project.dart';
import '../bottombar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                text2: 'About Kretoss Technology',
              ),
              const Content(),
              Container(color: Colors.white, child: const Ideas()),
              const Values(),
              const Team(),
              const EstimateProject(),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
