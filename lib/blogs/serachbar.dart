import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../models/blog_categ.dart';
import '../models/blog_image_model.dart';
import '../models/blog_model.dart';
import '../models/blog_tag.dart';
import 'Blog_Construct/blog_1.dart';
import 'Blog_Construct/categories_page.dart';
import 'blog_content.dart';
import 'package:http/http.dart' as http;

class SearchBar extends StatelessWidget {
  SearchBar({
    super.key,
    // required this.blogDetail,
    // required this.blogDetail1,
  });

  List<BlogDetail> blogDetail = [];

  Future<List<BlogDetail>> getData() async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
          'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/posts',
        ),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      blogDetail.clear();
      for (Map<String, dynamic> index in data) {
        blogDetail.add(BlogDetail.fromJson(index));
      }
      print('blogDetail:${blogDetail}');
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

  List<BlogCateg> blogCateg = [];

  Future<List<BlogCateg>> getData4() async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
            'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/categories'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      blogCateg.clear();
      for (Map<String, dynamic> index in data) {
        blogCateg.add(BlogCateg.fromJson(index));
      }
      return blogCateg;
    } else {
      return blogCateg;
    }
  }

  //final int select;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 500,
      // height: 1560,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 30.0, right: 10.0),
        child: Card(
          color: const Color(0xffF3F6F9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 15.0, top: 30.0),
                child: Text(
                  'Search by Keywords',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292930)),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 15.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        // height: 40,
                        // width: 300,
                        //color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10.0, left: 15.0, bottom: 10.0),
                          child: Text(
                            'Search...',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.sourceSansPro(
                                color: Colors.grey, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 15.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffe6e6e6),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      //color: Colors.grey,
                      height: 40,
                      width: 90,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Search',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sourceSansPro(
                              color: Color(0xff404040), fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 30.0, right: 15.0, top: 30.0, bottom: 20.0),
                child: Text(
                  'Categories',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292930)),
                ),
              ),
              FutureBuilder(
                  future: getData4(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 15.0),
                            child: ListView.builder(
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: blogCateg.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Categories_Page(
                                                  k: blogCateg[index].name,
                                                  select: blogCateg[index].id,
                                                  // blogDetail1:
                                                  //     blogDetail1,
                                                  // blogDetail: blogDetail,
                                                )));
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\u2022',
                                            style: GoogleFonts.sourceSansPro(
                                                fontSize: 22,
                                                color: Color(0xff696969)),
                                          ),
                                          const SizedBox(width: 5),
                                          Expanded(
                                            child: Text(
                                              blogCateg[index].name,
                                              textScaleFactor: 1.2,
                                              style: GoogleFonts.sourceSansPro(
                                                  fontSize: 15,
                                                  color: Color(0xff696969)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 40.0, bottom: 20.0),
                child: Text(
                  'Recent Posts',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292930)),
                ),
              ),
              //for (int i = 0; i < 3; i++)
              FutureBuilder(
                  future: getData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            print(index);
                            print(blogDetail);
                            print(blogDetail1);
                            return InkWell(
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
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        FutureBuilder(
                                            future: getData1(index),
                                            builder: (context, snapshot) {
                                              if (snapshot.hasData) {
                                                return Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0,
                                                          right: 15.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            27),
                                                    child: Image.network(
                                                      snapshot
                                                          .data!.guid.rendered,
                                                      height: 70,
                                                      width: 100,
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                return Center(
                                                    child:
                                                        CircularProgressIndicator());
                                              }
                                            }),
                                        Expanded(
                                            child:
                                                // FutureBuilder(
                                                //     future: getData(),
                                                //     builder: (context, snapshot) {
                                                //if (snapshot.hasData) {
                                                //return
                                                Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: Text(
                                                blogDetail[index]
                                                    .title
                                                    .rendered,
                                                textScaleFactor: 1.2,
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff292930),
                                                        fontSize: 12),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10.0),
                                                    child: Text(
                                                      DateFormat('MMM dd, yyyy')
                                                          .format(
                                                              blogDetail[index]
                                                                  .date),
                                                      style: GoogleFonts
                                                          .sourceSansPro(
                                                              color: Color(
                                                                  0xff999FAE)),
                                                    ),
                                                  ),
                                                  const VerticalDivider(
                                                    //endIndent: 2,
                                                    indent: 10,
                                                    thickness: 2,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10.0),
                                                    child: Text('to Read',
                                                        style: GoogleFonts
                                                            .sourceSansPro(
                                                                color: Color(
                                                                    0xff999FAE))),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                            //}
                                            // else {
                                            //   return Center(
                                            //     child: CircularProgressIndicator(),
                                            //   );
                                            // }
                                            //}),
                                            ),
                                      ],
                                    ),
                                    Divider(
                                      indent: 20,
                                      endIndent: 20,
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
