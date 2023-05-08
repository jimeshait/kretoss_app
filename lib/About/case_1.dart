import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:kretoss_webapp/bottombar.dart';
import 'package:kretoss_webapp/estimate_project.dart';
import '../models/blog_image_model.dart';
import '../models/case_model.dart';

class Case_1 extends StatelessWidget {
  Case_1({super.key, required this.select});
  final int select;
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //if (index == 0)
                    FutureBuilder(
                        future: getData1(select),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Padding(
                                padding: const EdgeInsets.only(
                                    top: 35.0, left: 15.0, right: 15.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.network(
                                        snapshot.data!.guid.rendered)));
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        }),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, left: 15.0, right: 20.0, bottom: 35.0),
                      child: Html(
                        data: blogDetail[select].content.rendered,
                        style: {
                          "body": Style.fromTextStyle(
                            GoogleFonts.sourceSansPro(
                                fontSize: 17,
                                color: Color(0xff404040),
                                height: 1.5),
                          ),
                          "html": Style(textAlign: TextAlign.justify)
                        },
                      ),
                    ),
                  ]),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
