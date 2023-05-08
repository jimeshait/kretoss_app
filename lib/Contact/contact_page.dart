// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/Contact/address.dart';
import 'package:kretoss_webapp/Contact/connect.dart';
import 'package:kretoss_webapp/Contact/working.dart';
import 'package:kretoss_webapp/estimate_project.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/free_quote.dart';
import 'package:kretoss_webapp/Contact/contactquote.dart';
import '../appbartop.dart';
import '../bottombar.dart';
import '../drawer/drawer.dart';
import '../About/path.dart';

// ignore: must_be_immutable
class Contact_Page extends StatelessWidget {
  Contact_Page({super.key, required this.isAppBar});
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Path(
                text1: 'Home',
                text2: 'Contact Us',
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15.0, bottom: 50),
                child: Text(
                  'Contact Us',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292930)),
                ),
              ),
              Container(
                color: const Color(0xffFFFFFF),
                child: Column(
                  children: [ContactQuote(), const Connect(), const Working()],
                ),
              ),
              Address(),
              const EstimateProject(),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
