import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/appbartop.dart';
import 'package:kretoss_webapp/companylogo.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/service.dart';
import 'package:kretoss_webapp/services/company_value.dart';
import 'package:kretoss_webapp/services/expert.dart';
import 'package:kretoss_webapp/services/service_content.dart';
import 'package:kretoss_webapp/services/service_work.dart';
import 'package:kretoss_webapp/services/services_work.dart';
import '../About/path.dart';
import '../bottombar.dart';
import '../drawer/drawer.dart';
import '../estimate_project.dart';

class Service_Page extends StatelessWidget {
  Service_Page({super.key, required this.isAppbar});
  bool isAppbar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: DrawerMenu(),
        appBar: (isAppbar == false)
            ? null
            : AppBarTop(
                child: SvgPicture.asset(
                  'assets/svg/kretoss.svg',
                  alignment: Alignment.centerLeft,
                  height: 40,
                  width: 40,
                ),
                preferredSize: Size.fromHeight(55)),
        floatingActionButton: (isAppbar == false) ? null : FloatingBtn(),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xffF3F6F9),
            child: Column(
              children: [
                Path(
                  text1: 'Home',
                  text2: 'Our Services',
                ),
                Service_Content(),
                Expert(),
                ServiceWork(),
                CompanyValue(),
                EstimateProject(),
                BottomBar(),
              ],
            ),
          ),
        ));
  }
}
