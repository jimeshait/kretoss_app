import 'dart:convert';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/models/port_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'Portfolio/portfolio.dart';
import 'models/blog_image_model.dart';

class WorkingApp extends StatelessWidget {
  WorkingApp({super.key});
  // List products = [
  //   {
  //     'name': 'CleverDo App',
  //     'image':
  //         'https://kretoss.com/wp-content/uploads/2023/01/cleverdo-app.png',
  //     'desc': 'iOS Swift, Native Android',
  //     'url':
  //         'https://play.google.com/store/apps/details?id=com.cleverdo.customer&hl=en_IN&gl=US'
  //   },
  //   {
  //     'name': 'GTI',
  //     'image': 'https://kretoss.com/wp-content/uploads/2022/07/gti-ss.png',
  //     'desc': 'React Native',
  //     'url':
  //         'https://play.google.com/store/apps/details?id=com.essence.gujarattilesinfo'
  //   },
  //   {
  //     'name': 'Bible Verses & Quotes Keyboard',
  //     'image': 'https://kretoss.com/wp-content/uploads/2022/07/bible.png',
  //     'desc': 'iOS, Native Android',
  //     'url':
  //         'https://play.google.com/store/apps/details?id=com.verkkostadi.bibleversesandquotes'
  //   },
  //   {
  //     'name': 'My ActiveLab',
  //     'image': 'https://kretoss.com/wp-content/uploads/2022/07/active-lab.png',
  //     'desc': 'React Native',
  //     'url': 'https://play.google.com/store/apps/details?id=com.activelab'
  //   },
  //   {
  //     'name': 'Smart Secure Solutions',
  //     'image':
  //         'https://kretoss.com/wp-content/uploads/2022/12/smart-secure-solutions.png',
  //     'desc': 'Wordpress',
  //     'url': 'https://smartsecure.net.in/'
  //   },
  //   {
  //     'name': 'EasyGold24',
  //     'image':
  //         'https://kretoss.com/wp-content/uploads/2022/11/easy-gold-24.png',
  //     'desc': 'Wordpress',
  //     'url': 'https://easygold24.de/en/'
  //   },
  //   {
  //     'name': 'Skin Dao',
  //     'image': 'https://kretoss.com/wp-content/uploads/2022/11/skin-dao.png',
  //     'desc': 'JavaScript, jQuery, ReactJS',
  //     'url': 'https://skincare-adaa1.web.app/'
  //   },
  //   {
  //     'name': 'Atopic Diary',
  //     'image':
  //         'https://kretoss.com/wp-content/uploads/2022/08/atopic-diary.png',
  //     'desc': 'CSS, HTML, JavaScript, jQuery',
  //     'url': 'https://kretoss.in/project/atopic-diary/'
  //   },
  // ];

  List<PortList> portDetail = [];
  Future<List<PortList>> getData() async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
          'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/portfolio',
        ),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      portDetail.clear();
      for (Map<String, dynamic> index in data) {
        portDetail.add(PortList.fromJson(index));
      }
      return portDetail;
    } else {
      return portDetail;
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
            'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/media/${portDetail[index].featuredMedia}'),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 3700,
      // width: 500,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15.0),
            child: Text(
              'Our Project',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(color: Color(0xffC75C6F)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15.0),
            child: Text(
              'Some of our finest work',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930)),
            ),
          ),
          FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: portDetail.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 3 ||
                        index == 4 ||
                        index == 0 ||
                        index == 1 ||
                        index == 2 ||
                        index == 6)
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(30)),
                          elevation: 1,
                          color: Color(0xffffffff),
                          child: Container(
                            // width: 540,
                            // height: 400,
                            child: InkWell(
                              // onTap: () async {
                              //   var url = Uri.parse(products[index]['url']);
                              //   if (await canLaunchUrl(url)) {
                              //     await launchUrl(url);
                              //   } else {
                              //     throw 'Could not launch $url';
                              //   }
                              // },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FutureBuilder(
                                      future: getData1(index),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0.0,
                                                left: 0.0,
                                                right: 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(30),
                                                      topRight:
                                                          Radius.circular(30)),
                                              child: Image.network(
                                                snapshot.data!.guid.rendered,
                                                fit: BoxFit.cover,
                                                height: 260,
                                                width: 490,
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
                                        top: 25.0,
                                        left: 35.0,
                                        right: 35.0,
                                        bottom: 35.0),
                                    child: Text(
                                      portDetail[index].title.rendered,
                                      style: GoogleFonts.sourceSansPro(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff292930)),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //       left: 35.0, top: 8.0, bottom: 25.0),
                                  //   child: Text(
                                  //     products[index]['desc'],
                                  //     style: GoogleFonts.sourceSansPro(
                                  //         fontSize: 15, color: Color(0xff404040)),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, top: 15.0, right: 30.0, bottom: 25.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      // height: 55,
                      // width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff5956e9)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Portfolio(
                                          isAppBar: true,
                                        )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              'View More Projects',
                              style: GoogleFonts.sourceSansPro(fontSize: 19),
                            ),
                          )))),
            ),
          ),
        ],
      ),
    );
  }
}
