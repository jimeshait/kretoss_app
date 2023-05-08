// ignore_for_file: unused_field
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kretoss_webapp/blogs/Blog_Construct/blog_1.dart';
import 'package:kretoss_webapp/blogs/blog_content.dart';
import 'package:kretoss_webapp/blogs/serachbar.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:readmore/readmore.dart';
import 'package:http/http.dart' as http;
import '../../models/blog_categ.dart';
import '../../models/blog_image_model.dart';
import '../../models/blog_model.dart';

class Tag_Blog extends StatelessWidget {
  Tag_Blog({
    super.key,
    required this.i,
    // required this.blogDetail,
    // required this.blogDetail1
  });
  //String k;
  int i;
  String id = '';

  // ignore: unused_field
  final int _numPages = 4;

  // ignore: prefer_final_fields
  int _currentPage = 0;

  int remaining = 0;

  int select = 0;

  List<BlogDetail> blogDetail = [];

  Future<List<BlogDetail>> getData() async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
            'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/posts?tags=$i'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      blogDetail.clear();
      for (Map<String, dynamic> index in data) {
        blogDetail.add(BlogDetail.fromJson(index));
      }
      print('blogDetail: ${blogDetail}');
      return blogDetail;
    } else {
      print(blogDetail);
      print('hi');
      return blogDetail;
    }
  }

  List<BlogImage> blogDetail1 = [];
  Future<BlogImage?> getData1(int select) async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
            'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/media/${blogDetail[select].featuredMedia}'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      BlogImage blog = BlogImage.fromJson(data as Map<String, dynamic>);
      blogDetail1.add(blog);
      return blog;
    } else {
      print('hi');
      return null;
    }
  }

  List<BlogDetail> blogDetail2 = [];
  Future<List<BlogDetail>> getData2() async {
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
        blogDetail2.add(BlogDetail.fromJson(index));
      }
      print('blogdetail2:${blogDetail2}');
      return blogDetail2;
    } else {
      return blogDetail2;
    }
  }

  // List<BlogCateg> blogCateg = [];
  @override
  Widget build(BuildContext context) {
    // int itemsPerPage = 6;
    // final startIndex = (_currentPage) * itemsPerPage;
    // final endIndex = startIndex + itemsPerPage;
    // remaining = endIndex - startIndex;
    // final currentItems = blog.sublist(startIndex, endIndex);

    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              // height: 11620,
              // width: 500,
              color: const Color(0xffFFFFFF),
              child: Column(
                children: [
                  for (int j = 0; j < blogDetail.length; j++)
                    Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child:
                            //ListView.builder(
                            // physics: const ScrollPhysics(),
                            // shrinkWrap: true,
                            // itemCount: 2,
                            // itemBuilder: (BuildContext context, int index) {
                            // print(index);
                            // print('Index:$i');
                            Padding(
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
                                      future: getData1(j),
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
                                              .format(blogDetail[j].date),
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
                                      blogDetail[j].title.rendered,
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
                                      data: blogDetail[j].excerpt.rendered,
                                      style: {
                                        "html": Style.fromTextStyle(
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
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             Blog_1(
                                        //               blog: blog,
                                        //               id: blogDetail[j]
                                        //                   .id
                                        //                   .toString(),
                                        //               select: k,
                                        //             )));
                                        // print('hi');
                                        // print(j);
                                        // print(blogDetail[j].id.toString());
                                        // print(blogDetail.length);
                                        // print(blogDetail[index].tags[0]);
                                        // print(blogDetail[index].tags[1]);
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
                        )
                        //   },
                        // )
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: SearchBar(
                        // blogDetail1: blogDetail1,
                        // blogDetail: blogDetail2,
                        ),
                  )
                  // NumberPaginator(
                  //   numberPages: _numPages,
                  //   config: NumberPaginatorUIConfig(
                  //       //contentPadding: EdgeInsets.zero,
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       buttonSelectedBackgroundColor: Colors.blue,
                  //       buttonSelectedForegroundColor: Colors.white,
                  //       buttonUnselectedForegroundColor: Colors.grey),
                  //   onPageChange: (int index) {
                  //     setState(() {
                  //       _currentPage = index;
                  //       print(_currentPage);
                  //       print(itemsPerPage);
                  //       print(startIndex);
                  //       print(endIndex);
                  //       print(remaining);
                  //       if (_currentPage == 3) {
                  //         itemsPerPage = 4;
                  //       }
                  //     });
                  //   },
                  // )
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
