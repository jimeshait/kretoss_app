import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/blogs/blog_content.dart';
import 'package:kretoss_webapp/blogs/blog_list.dart';
import 'package:kretoss_webapp/blogs/serachbar.dart';
import 'package:kretoss_webapp/bottombar.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/our_blog.dart';
import '../About/path.dart';
import '../appbartop.dart';
import '../drawer/drawer.dart';

class Blog_Page extends StatelessWidget {
  const Blog_Page({super.key});
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Path(
                text1: 'Home',
                text2: 'Our Blogs',
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15.0, bottom: 50),
                child: Text(
                  'Our Blogs',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292930)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Blog_list(),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
