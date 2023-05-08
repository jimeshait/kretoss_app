import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'package:kretoss_webapp/blogs/blog_content.dart';
import 'package:kretoss_webapp/blogs/blog_page.dart';
import 'package:kretoss_webapp/models/blog_model.dart';
import 'package:flutter_html/flutter_html.dart';
//import 'package:flutter_html_all/flutter_html_all.dart';
import 'blogs/Blog_Construct/blog_1.dart';
import 'models/blog_image_model.dart';

class OurBlog extends StatefulWidget {
  OurBlog({super.key});

  @override
  State<OurBlog> createState() => _OurBlogState();
}

class _OurBlogState extends State<OurBlog> {
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
      blogDetail.clear();
      for (Map<String, dynamic> index in data) {
        blogDetail.add(BlogDetail.fromJson(index));
      }
      return blogDetail;
    } else {
      return blogDetail;
    }
  }

  List<BlogImage> blogDetail1 = [];
  Future<BlogImage?> getData1(index) async {
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
      blogDetail1.clear();
      BlogImage blog = BlogImage.fromJson(data as Map<String, dynamic>);
      blogDetail1.add(blog);
      print(blogDetail1);
      return blog;
    } else {
      print(blogDetail1);
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              // height: 1800,
              // width: 500,
              color: Color(0xffFFFFFF),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 45.0, bottom: 20),
                    child: Text(
                      'Our Blogs',
                      textScaleFactor: 1.2,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff292930)),
                    ),
                  ),
                  ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                              side: BorderSide(
                                color: Color(0xffc1c1c1),
                              )),
                          child: Container(
                            // height: 510,
                            // width: 550,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FutureBuilder(
                                    future: getData1(index),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              child: Image.network(
                                                snapshot.data!.guid.rendered,
                                              ),
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                    }),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 25.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        DateFormat('MMM dd, yyyy')
                                            .format(blogDetail[index].date),
                                        style: GoogleFonts.sourceSansPro(
                                            color: Color(0xff696969)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, right: 15.0),
                                        child: CircleAvatar(
                                          radius: 4,
                                          foregroundColor: Color(0xff696969),
                                          backgroundColor: Color(0xff696969),
                                        ),
                                      ),
                                      Text('to read',
                                          style: GoogleFonts.sourceSansPro(
                                              color: Color(0xff696969))),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, right: 20.0, top: 20.0),
                                  child: Text(
                                    blogDetail[index].title.rendered,
                                    style: GoogleFonts.sourceSansPro(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21,
                                        color: Color(0xff292930)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, right: 18.0, top: 13.0),
                                  child: Html(
                                    data: blogDetail[index].excerpt.rendered,
                                    style: {
                                      "body": Style.fromTextStyle(
                                        //textAlign: TextAlign.justify,
                                        GoogleFonts.sourceSansPro(
                                            fontSize: 17,
                                            color: Color(0xff404040),
                                            height: 1.5),
                                        // fontSize: FontSize.large,
                                        // color: Color(0xff404040),
                                        // letterSpacing: 1.2,
                                        // fontStyle: GoogleFonts.sourceSansPro()
                                        //     .fontStyle,
                                      ),
                                      "html":
                                          Style(textAlign: TextAlign.justify)
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0,
                                      right: 20.0,
                                      top: 30.0,
                                      bottom: 25.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Blog_1(
                                                    blog: blog,
                                                    id: blogDetail[index]
                                                        .id
                                                        .toString(),
                                                    select: index,
                                                  )));
                                      print('hi');
                                      print(index);
                                      print(blogDetail[index].id.toString());
                                      print(blogDetail.length);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Read More',
                                          style: GoogleFonts.sourceSansPro(
                                              color: Color(0xff4169e1),
                                              fontSize: 16),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 3.0),
                                          child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Color(0xff4169e1),
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, top: 25.0, right: 30.0, bottom: 55.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                              // height: 55,
                              // width: 200,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff5956E9)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Blog_Page()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Text(
                                      'View More Blogs',
                                      style: GoogleFonts.sourceSansPro(
                                          fontSize: 19),
                                    ),
                                  )))),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
