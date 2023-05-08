import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/Hiring/vacancy.dart';
import 'package:kretoss_webapp/appbartop.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import '../bottombar.dart';
import '../drawer/drawer.dart';
import 'hiring.dart';

class HiringPage extends StatelessWidget {
  const HiringPage({super.key});

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
              const Hiring(),
              Vacancy(),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
