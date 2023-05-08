import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/About/caseBlog.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import '../blogs/serachbar.dart';
import '../bottombar.dart';
import './path.dart';
import '../appbartop.dart';
import '../drawer/drawer.dart';

class CasePage extends StatelessWidget {
  const CasePage({super.key});

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
              color: const Color(0xffF4F7F9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Path(
                    text1: 'Home',
                    text2: 'Case Study',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20, left: 15.0, right: 15.0, bottom: 55),
                    child: Text(
                      'Archives: Case Study',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Case_Blog(),
                  SearchBar(),
                  BottomBar()
                ],
              ))),
    );
  }
}
