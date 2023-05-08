import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:kretoss_webapp/pagescroll.dart';
import 'package:kretoss_webapp/review.dart';
import 'package:kretoss_webapp/service.dart';
import 'package:kretoss_webapp/tokendata.dart';
import 'package:kretoss_webapp/working_app.dart';
import 'package:http/http.dart' as http;
import 'About_Us.dart';
import 'bottombar.dart';
import 'comments.dart';
import 'companylogo.dart';
import 'estimate_project.dart';
import 'numgame.dart';
import 'our_blog.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Comments(),
            ),
            Service(),
            PageScroll(),
            AboutUs(),
            WorkingApp(),
            NumGame(),
            Review(),
            CompanyLogo(),
            OurBlog(),
            EstimateProject(),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
