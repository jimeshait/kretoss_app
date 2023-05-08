import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:kretoss_webapp/blogs/Blog_Construct/blog_info.dart';
import 'package:kretoss_webapp/blogs/Blog_Construct/blog_write.dart';
import 'package:kretoss_webapp/blogs/blog_content.dart';
import 'package:kretoss_webapp/bottombar.dart';
import 'package:kretoss_webapp/estimate_project.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import '../../appbartop.dart';
import '../../drawer/drawer.dart';
import '../../models/blog_model.dart';
import '../../services/MobileApp/service_path.dart';
import 'package:http/http.dart' as http;

class Blog_1 extends StatelessWidget {
  Blog_1(
      {super.key, required this.blog, required this.id, required this.select});
  final List<Blog_Content> blog;
  final String id;
  final int select;
  List<BlogDetail> blogDetail = [];
  Future<List<BlogDetail>> getData() async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse('https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/posts'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        blogDetail.add(BlogDetail.fromJson(index));
      }
      return blogDetail;
    } else {
      return blogDetail;
    }
  }

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
          child: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                      color: const Color(0xffF4F7F9),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemCount: blogDetail.length,
                        itemBuilder: (context, index) {
                          // ignore: curly_braces_in_flow_control_structures
                          if (id ==
                              blogDetail[select].id.toString()) if (index == 0)
                            // ignore: curly_braces_in_flow_control_structures
                            return Column(
                              children: [
                                ServicePath(
                                    text1: 'Home',
                                    text2: 'Blog',
                                    text3: blogDetail[select].title.rendered),
                                Blog_Info(
                                  text: blogDetail[select].title.rendered,
                                  text1: blog[select].type,
                                  text2: 'Written by Kretoss Team',
                                  text3: DateFormat('MMM dd, yyyy')
                                      .format(blogDetail[select].date),
                                ),
                                BlogWrite(blog: blog, select: select),
                                const EstimateProject(),
                                BottomBar()
                              ],
                            );
                        },
                      ));
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    );
  }
}
