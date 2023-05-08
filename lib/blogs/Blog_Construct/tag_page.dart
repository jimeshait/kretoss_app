import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/blogs/Blog_Construct/categories_blog.dart';
import 'package:kretoss_webapp/blogs/Blog_Construct/tag_blog.dart';
import 'package:kretoss_webapp/blogs/blog_list.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import '../../appbartop.dart';
import '../../bottombar.dart';
import '../../drawer/drawer.dart';
import '../../estimate_project.dart';
import '../../models/blog_categ.dart';
import '../../models/blog_image_model.dart';
import '../../models/blog_model.dart';
import '../../models/blog_tag.dart';
import '../../services/MobileApp/service_path.dart';
import '../blog_content.dart';
import 'package:kretoss_webapp/About/path.dart';
import 'package:http/http.dart' as http;

class Tag_Page extends StatelessWidget {
  Tag_Page({
    super.key,
    required this.k,
    required this.select,
    // required this.blogDetail,
    // required this.blogDetail1
  });
  int select;
  String k;
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

  List<BlogImage> blogDetail1 = [];
  Future<BlogImage?> getData1(int index) async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
            'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/media/${blogDetail[index].featuredMedia}'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      BlogImage blog = BlogImage.fromJson(data as Map<String, dynamic>);
      blogDetail1.add(blog);
      return blog;
    } else {
      return null;
    }
  }

  // List<BlogImage> blogDetail2 = [];
  // Future<BlogImage?> getData3() async {
  //   var headers = {
  //     'authorization':
  //         'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
  //   };
  //   final response = await http.get(
  //       Uri.parse(
  //           'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/media/${blogDetail[widget.select].featuredMedia}'),
  //       headers: headers);
  //   var data = jsonDecode(response.body.toString());
  //   if (response.statusCode == 200) {
  //     BlogImage blog = BlogImage.fromJson(data as Map<String, dynamic>);
  //     blogDetail2.add(blog);
  //     return blog;
  //   } else {
  //     return null;
  //   }
  // }

  // List<BlogTag> blogTag = [];
  // Future<List<BlogTag>> getData2(int index) async {
  //   var headers = {
  //     'authorization':
  //         'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
  //   };
  //   final response = await http.get(
  //       Uri.parse(
  //           'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/tags/${blogDetail[widget.select].tags[index]}'),
  //       headers: headers);
  //   var data = jsonDecode(response.body.toString());
  //   if (response.statusCode == 200) {
  //     BlogTag blog = BlogTag.fromJson(data as Map<String, dynamic>);
  //     blogTag.add(blog);
  //     return blogTag;
  //   } else {
  //     return blogTag;
  //   }
  // }

  List<BlogCateg> blogTag = [];
  Future<List<BlogCateg>> getData4() async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse('https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/tags'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        blogTag.add(BlogCateg.fromJson(index));
      }
      return blogTag;
    } else {
      return blogTag;
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
          child: Container(
              color: const Color(0xffF4F7F9),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: blog.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Path(text1: 'Home', text2: blog[select].categ[k].name),
                      Path(
                        text1: 'Home',
                        text2: k,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 15.0, right: 15.0, bottom: 55),
                        child: Text(
                          'Tags: ${k}',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff292930)),
                        ),
                      ),
                      Tag_Blog(
                        i: select,
                        // blogDetail: blogDetail,
                        // blogDetail1: blogDetail1,
                      ),
                      // Blog_Info(
                      //   text: blog[select].title,
                      //   text1: blog[select].type,
                      //   text2: 'Written by Kretoss Team',
                      //   text3: blog[select].date,
                      // ),
                      // BlogWrite(blog: blog, select: select),
                      const EstimateProject(),
                      BottomBar()
                    ],
                  );
                },
              ))),
    );
  }
}
