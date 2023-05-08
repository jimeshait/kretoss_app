import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kretoss_webapp/About/case_page.dart';
import 'package:kretoss_webapp/About/choose/choose_page.dart';
import 'package:kretoss_webapp/About/idea/ideas_page.dart';
import 'package:kretoss_webapp/bottombar.dart';
import 'package:kretoss_webapp/models/case_model.dart';
import '../blogs/blog_content.dart';
import '../blogs/serachbar.dart';
import '../models/blog_image_model.dart';
import '../models/blog_model.dart';
import 'package:http/http.dart' as http;

import 'case_1.dart';

class Case_Blog extends StatelessWidget {
  Case_Blog({super.key});

  List<CaseList> blogDetail = [];

  Future<List<CaseList>> getData() async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
            'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/case-study'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      blogDetail.clear();
      // BlogDetail blog = BlogDetail.fromJson(data as Map<String, dynamic>);
      // blogDetail.add(blog);
      for (Map<String, dynamic> index in data) {
        blogDetail.add(CaseList.fromJson(index));
      }
      print(blogDetail);
      return blogDetail;
    } else {
      print(blogDetail);
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
                // height: 11620,
                // width: 500,
                color: const Color(0xffFFFFFF),
                child: Column(
                  children: [
                    //for (int index = 0; index < blogDetail.length; index++)
                    Padding(
                        padding: const EdgeInsets.only(top: 35.0, bottom: 35.0),
                        child: ListView.builder(
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: blogDetail.length,
                            itemBuilder: (BuildContext context, int index) {
                              //print(index);
                              return Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0,
                                    left: 15.0,
                                    right: 15.0,
                                    bottom: 12.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      side: const BorderSide(
                                        color: Color(0xffc1c1c1),
                                      )),
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    // height: 510,
                                    // width: 550,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        FutureBuilder(
                                            future: getData1(index),
                                            builder: (context, snapshot) {
                                              if (snapshot.hasData) {
                                                return Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                      child: Image.network(
                                                        snapshot.data!.guid
                                                            .rendered,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                return Center(
                                                  child:
                                                      CircularProgressIndicator(),
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
                                                    .format(
                                                        blogDetail[index].date),
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        color:
                                                            Color(0xff696969)),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15.0, right: 15.0),
                                                child: CircleAvatar(
                                                  radius: 4,
                                                  foregroundColor:
                                                      Color(0xff696969),
                                                  backgroundColor:
                                                      Color(0xff696969),
                                                ),
                                              ),
                                              Text('to read',
                                                  style:
                                                      GoogleFonts.sourceSansPro(
                                                          color: Color(
                                                              0xff696969))),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25.0,
                                              right: 20.0,
                                              top: 20.0),
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
                                              left: 18.0,
                                              right: 18.0,
                                              top: 13.0),
                                          child: Html(
                                            data: blogDetail[index]
                                                .excerpt
                                                .rendered,
                                            style: {
                                              "body": Style.fromTextStyle(
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
                                              "html": Style(
                                                  textAlign: TextAlign.justify)
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
                                                      builder: (context) =>
                                                          Case_Page(
                                                              index: index,
                                                              name: blogDetail[
                                                                      index]
                                                                  .title
                                                                  .rendered)));
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                Text(
                                                  'Read More ',
                                                  style:
                                                      GoogleFonts.sourceSansPro(
                                                          color:
                                                              Color(0xff4169e1),
                                                          fontSize: 16),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 3.0),
                                                  child: Icon(
                                                    Icons
                                                        .arrow_forward_ios_outlined,
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
                            })),
                  ],
                ));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
