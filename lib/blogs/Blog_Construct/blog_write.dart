import 'dart:convert';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kretoss_webapp/blogs/Blog_Construct/tag_page.dart';
import 'package:kretoss_webapp/blogs/blog_content.dart';
import 'package:kretoss_webapp/models/blog_categ.dart';
import 'package:kretoss_webapp/models/blog_image_model.dart';
import 'package:kretoss_webapp/models/blog_tag.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:http/http.dart' as http;

import '../../models/blog_model.dart';
import 'blog_1.dart';
import 'categories_page.dart';

class BlogWrite extends StatefulWidget {
  BlogWrite({super.key, required this.blog, required this.select});
  final int select;
  final List<Blog_Content> blog;

  @override
  State<BlogWrite> createState() => _BlogWriteState();
}

class _BlogWriteState extends State<BlogWrite> {
  List share = [
    {
      'name': 'Facebook',
      'image': 'assets/images/facebook.png',
      'color': Colors.blue[900],
      'url':
          'https://www.facebook.com/login.php?skip_api_login=1&api_key=966242223397117&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fsharer.php%3Fu%3Dhttps%253A%252F%252Fkretoss.com%252F5-effective-tips-to-fix-issues-with-web-design%252F&cancel_url=https%3A%2F%2Fwww.facebook.com%2Fdialog%2Fclose_window%2F%3Fapp_id%3D966242223397117%26connect%3D0%23_%3D_&display=popup&locale=en_GB'
    },
    {
      'name': 'Twitter',
      'image': 'assets/images/twitter.png',
      'color': Colors.blue,
      'url':
          'https://twitter.com/intent/tweet?url=https://kretoss.com/5-effective-tips-to-fix-issues-with-web-design/'
    },
    {
      'name': 'LinkedIn',
      'image': 'assets/images/linkedin.png',
      'color': const Color(0xff0077b5),
      'url': 'https://www.linkedin.com/checkpoint/lg/login-submit'
    },
    {
      'name': 'Pinterest',
      'image': 'assets/images/pinterest.png',
      'color': const Color(0xffE60023),
      'url':
          'https://www.pinterest.com/pin/create/button/?url=https://kretoss.com/5-effective-tips-to-fix-issues-with-web-design/'
    },
  ];

  // late YoutubePlayerController controller;
  bool isExpanded = false;

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

  List<BlogImage> blogDetail2 = [];
  Future<BlogImage?> getData3() async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
            'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/media/${blogDetail[widget.select].featuredMedia}'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      BlogImage blog = BlogImage.fromJson(data as Map<String, dynamic>);
      blogDetail2.add(blog);
      return blog;
    } else {
      return null;
    }
  }

  List<BlogTag> blogTag = [];
  Future<List<BlogTag>> getData2(int index) async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
            'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/tags/${blogDetail[widget.select].tags[index]}'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      BlogTag blog = BlogTag.fromJson(data as Map<String, dynamic>);
      blogTag.add(blog);
      return blogTag;
    } else {
      return blogTag;
    }
  }

  // List<BlogTag> blogTag1 = [];
  // Future<List<BlogTag>> getData5() async {
  //   var headers = {
  //     'authorization':
  //         'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
  //   };
  //   final response = await http.get(
  //       Uri.parse('https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/tags'),
  //       headers: headers);
  //   var data = jsonDecode(response.body.toString());
  //   if (response.statusCode == 200) {
  //     BlogTag blog = BlogTag.fromJson(data as Map<String, dynamic>);
  //     blogTag1.add(blog);
  //     return blogTag1;
  //   } else {
  //     return blogTag1;
  //   }
  // }

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
      for (Map<String, dynamic> index in data) {
        blogCateg.add(BlogCateg.fromJson(index));
      }
      return blogCateg;
    } else {
      return blogCateg;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //if (index == 0)
                  FutureBuilder(
                      future: getData1(widget.select),
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
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 15.0, top: 25.0, right: 15.0),
                  //   child: Text(blogDetail[widget.select].title.rendered,
                  //       textScaleFactor: 1.2,
                  //       textAlign: TextAlign.justify,
                  //       style: GoogleFonts.sourceSansPro(
                  //           fontSize: 15,
                  //           color: Color(0xff404040),
                  //           height: 1.5)),
                  // ),
                  //if (index == 0)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25.0, left: 15.0, right: 20.0),
                    child: Html(
                      data: blogDetail[widget.select].content.rendered,
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
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       top: 25.0, left: 15.0, right: 15.0),
                  //   child: Card(
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(7),
                  //         side: const BorderSide(
                  //           color: Color(0xffc1c1c1),
                  //         )),
                  //     child: Container(
                  //         color: const Color(0xfff9f9f9),
                  //         child: Column(
                  //           children: [
                  //             InkWell(
                  //               onTap: () {
                  //                 setState(() {
                  //                   isExpanded = !isExpanded;
                  //                 });
                  //               },
                  //               child: Row(
                  //                 mainAxisAlignment:
                  //                     MainAxisAlignment.spaceBetween,
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 // ignore: prefer_const_literals_to_create_immutables
                  //                 children: [
                  //                   Padding(
                  //                     padding: EdgeInsets.only(
                  //                         top: 10.0, left: 15.0, bottom: 8.0),
                  //                     child: Text('Table of Content',
                  //                         style: GoogleFonts.sourceSansPro(
                  //                             fontWeight: FontWeight.bold,
                  //                             fontSize: 20,
                  //                             color: Color(0xff404040))),
                  //                   ),
                  //                   const Padding(
                  //                     padding: EdgeInsets.only(
                  //                       top: 10.0,
                  //                       right: 15.0,
                  //                     ),
                  //                     child: Icon(
                  //                       Icons.list_alt,
                  //                       color: Color(0xff404040),
                  //                     ),
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //             if (isExpanded == false)
                  //               for (int i = 0;
                  //                   i < widget.blog[widget.select].table.length;
                  //                   i++)
                  //                 Padding(
                  //                   padding:
                  //                       const EdgeInsets.only(bottom: 10.0),
                  //                   child: Row(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     mainAxisAlignment:
                  //                         MainAxisAlignment.start,
                  //                     children: [
                  //                       Padding(
                  //                         padding:
                  //                             const EdgeInsets.only(left: 15.0),
                  //                         child: Text(
                  //                           widget.blog[widget.select].table[i]
                  //                               .num,
                  //                           style: GoogleFonts.sourceSansPro(
                  //                               fontSize: 15,
                  //                               color: Color(0xff404040)),
                  //                         ),
                  //                       ),
                  //                       const SizedBox(
                  //                         width: 10,
                  //                       ),
                  //                       Expanded(
                  //                         child: Padding(
                  //                           padding: const EdgeInsets.only(
                  //                               right: 15.0),
                  //                           child: Text(
                  //                             widget.blog[widget.select]
                  //                                 .table[i].d,
                  //                             style: GoogleFonts.sourceSansPro(
                  //                                 fontSize: 15,
                  //                                 color: Color(0xff404040)),
                  //                           ),
                  //                         ),
                  //                       )
                  //                     ],
                  //                   ),
                  //                 ),
                  //           ],
                  //         )),
                  //   ),
                  // ),
                  // if (widget.blog[widget.select].write[0].desc1[0].url != '')
                  //   Padding(
                  //     padding: const EdgeInsets.only(
                  //         top: 15.0, right: 15.0, left: 15.0),
                  //     child: YoutubePlayerBuilder(
                  //         player: YoutubePlayer(
                  //             controller: YoutubePlayerController(
                  //                 initialVideoId: YoutubePlayer.convertUrlToId(
                  //                     widget.blog[widget.select].write[0]
                  //                         .desc1[0].url)!,
                  //                 flags: const YoutubePlayerFlags(
                  //                     mute: false,
                  //                     loop: false,
                  //                     autoPlay: true))),
                  //         builder: (context, player) {
                  //           return player;
                  //         }),
                  //   ),
                  // if (widget.blog[widget.select].write[0].desc1[0].image !=
                  //         '' &&
                  //     widget.blog[widget.select].write[0].desc1[0].link ==
                  //         false)
                  //   Padding(
                  //     padding: const EdgeInsets.only(
                  //         top: 15.0, right: 15.0, left: 15.0),
                  //     child: Image.asset(
                  //         widget.blog[widget.select].write[0].desc1[0].image),
                  //   ),
                  // if (widget.blog[widget.select].write[0].desc1[0].subque != '')
                  //   Padding(
                  //     padding: const EdgeInsets.only(
                  //         top: 15.0, left: 15.0, right: 15.0),
                  //     child: Text(
                  //       widget.blog[widget.select].write[0].desc1[0].subque,
                  //       //textScaleFactor: 1.2,
                  //       //textAlign: TextAlign.justify,
                  //       style: GoogleFonts.sourceSansPro(
                  //           fontSize: 22,
                  //           fontWeight: FontWeight.bold,
                  //           height: 1.5,
                  //           color: Color(0xff292930)),
                  //     ),
                  //   ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       top: 15.0, left: 15.0, right: 15.0),
                  //   child: Text(
                  //     widget.blog[widget.select].write[0].desc1[0].ans,
                  //     textScaleFactor: 1.2,
                  //     textAlign: TextAlign.justify,
                  //     style: GoogleFonts.sourceSansPro(
                  //         fontSize: 15, color: Color(0xff404040), height: 1.5),
                  //   ),
                  // ),
                  // if (widget.blog[widget.select].write[0].desc1[0].topic != '')
                  //   Padding(
                  //     padding: const EdgeInsets.only(
                  //         top: 15.0, left: 15.0, right: 15.0),
                  //     child: Text(
                  //       widget.blog[widget.select].write[0].desc1[0].topic,
                  //       textScaleFactor: 1.2,
                  //       style: GoogleFonts.sourceSansPro(
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.bold,
                  //           color: Color(0xff404040)),
                  //     ),
                  //   ),
                  // if (widget.blog[widget.select].write[0].desc1[0].ans2 != '')
                  //   Padding(
                  //     padding: const EdgeInsets.only(
                  //         top: 15.0, left: 15.0, right: 15.0),
                  //     child: Text(
                  //       widget.blog[widget.select].write[0].desc1[0].ans2,
                  //       textScaleFactor: 1.2,
                  //       textAlign: TextAlign.justify,
                  //       style: GoogleFonts.sourceSansPro(
                  //           fontSize: 15,
                  //           color: Color(0xff404040),
                  //           height: 1.5),
                  //     ),
                  //   ),
                  // for (int j = 1;
                  //     j < widget.blog[widget.select].write[0].desc1.length;
                  //     j++)
                  //   Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(
                  //             top: 15.0, left: 15.0, right: 15.0),
                  //         child: Text(
                  //           widget.blog[widget.select].write[0].desc1[j].que,
                  //           //textScaleFactor: 1.2,
                  //           //textAlign: TextAlign.justify,
                  //           style: GoogleFonts.sourceSansPro(
                  //               fontSize: 22,
                  //               fontWeight: FontWeight.bold,
                  //               color: Color(0xff292930)),
                  //         ),
                  //       ),
                  //       if (widget.blog[widget.select].write[0].desc1[j]
                  //                   .image !=
                  //               '' &&
                  //           widget.blog[widget.select].write[0].desc1[j].link ==
                  //               false)
                  //         Padding(
                  //           padding: const EdgeInsets.only(
                  //               top: 15.0, right: 15.0, left: 15.0),
                  //           child: Image.asset(widget
                  //               .blog[widget.select].write[0].desc1[j].image),
                  //         ),
                  //       if (widget.blog[widget.select].write[0].desc1[j].url !=
                  //           '')
                  //         Padding(
                  //           padding: const EdgeInsets.only(
                  //               top: 15.0, right: 15.0, left: 15.0),
                  //           child: YoutubePlayerBuilder(
                  //               player: YoutubePlayer(
                  //                   controller: YoutubePlayerController(
                  //                       initialVideoId:
                  //                           YoutubePlayer.convertUrlToId(widget
                  //                               .blog[widget.select]
                  //                               .write[0]
                  //                               .desc1[j]
                  //                               .url)!,
                  //                       flags: const YoutubePlayerFlags(
                  //                         mute: false,
                  //                         loop: false,
                  //                         autoPlay: false,
                  //                       ))),
                  //               builder: (context, player) {
                  //                 return player;
                  //               }),
                  //         ),
                  //       if (widget
                  //               .blog[widget.select].write[0].desc1[j].subque !=
                  //           '')
                  //         Padding(
                  //           padding: const EdgeInsets.only(
                  //               top: 15.0, left: 15.0, right: 15.0),
                  //           child: Text(
                  //             widget
                  //                 .blog[widget.select].write[0].desc1[j].subque,
                  //             //textScaleFactor: 1.2,
                  //             //textAlign: TextAlign.justify,
                  //             style: GoogleFonts.sourceSansPro(
                  //                 fontSize: 22,
                  //                 fontWeight: FontWeight.bold,
                  //                 height: 1.5,
                  //                 color: Color(0xff292930)),
                  //           ),
                  //         ),
                  //       if (widget.blog[widget.select].write[0].desc1[0].ans !=
                  //           '')
                  //         Padding(
                  //           padding: const EdgeInsets.only(
                  //               top: 15.0, left: 15.0, right: 15.0),
                  //           child: Text(
                  //             widget.blog[widget.select].write[0].desc1[j].ans,
                  //             textScaleFactor: 1.2,
                  //             textAlign: TextAlign.justify,
                  //             style: GoogleFonts.sourceSansPro(
                  //                 fontSize: 15,
                  //                 color: Color(0xff404040),
                  //                 height: 1.5),
                  //           ),
                  //         ),
                  //       if (widget
                  //               .blog[widget.select].write[0].desc1[j].topic !=
                  //           '')
                  //         Padding(
                  //           padding: const EdgeInsets.only(
                  //               top: 15.0, left: 15.0, right: 15.0),
                  //           child: Text(
                  //             widget
                  //                 .blog[widget.select].write[0].desc1[j].topic,
                  //             textScaleFactor: 1.2,
                  //             style: GoogleFonts.sourceSansPro(
                  //                 fontSize: 15,
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Color(0xff404040)),
                  //           ),
                  //         ),
                  //       if (widget.blog[widget.select].write[0].desc1[j].ans2 !=
                  //           '')
                  //         Padding(
                  //           padding: const EdgeInsets.only(
                  //               top: 15.0, left: 15.0, right: 15.0),
                  //           child: Text(
                  //             widget.blog[widget.select].write[0].desc1[j].ans2,
                  //             textScaleFactor: 1.2,
                  //             textAlign: TextAlign.justify,
                  //             style: GoogleFonts.sourceSansPro(
                  //                 fontSize: 15,
                  //                 color: Color(0xff404040),
                  //                 height: 1.5),
                  //           ),
                  //         ),
                  //       if (widget.blog[widget.select].write[0].desc1[j]
                  //                   .image !=
                  //               '' &&
                  //           widget.blog[widget.select].write[0].desc1[j].link !=
                  //               false)
                  //         Column(
                  //           children: [
                  //             Padding(
                  //               padding: const EdgeInsets.only(
                  //                   top: 15.0, right: 15.0, left: 15.0),
                  //               child: Image.asset(widget.blog[widget.select]
                  //                   .write[0].desc1[j].image),
                  //             ),
                  //             Padding(
                  //               padding: const EdgeInsets.only(
                  //                   left: 15.0, top: 15.0, right: 15.0),
                  //               child: Row(
                  //                 // ignore: prefer_const_literals_to_create_immutables
                  //                 children: [
                  //                   Text('Source:',
                  //                       style: GoogleFonts.sourceSansPro(
                  //                           fontSize: 15,
                  //                           color: Color(0xff696969))),
                  //                   Text(
                  //                     'https://squareup.com/us/en',
                  //                     style: GoogleFonts.sourceSansPro(
                  //                         fontSize: 15, color: Colors.blue),
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //           ],
                  //         )
                  //     ],
                  //   ),
                  //if (index == 0)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 15.0, right: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text('Tags:',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 15, color: Color(0xff404040))),
                        ),
                        // for (int k = 0;
                        //     k < blogDetail[widget.select].tags.length;
                        //     k++)
                        //   if (k == 0)
                        ListView.builder(
                            itemCount: blogDetail[widget.select].tags.length,
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              //print(blogTag[j].name);
                              return FutureBuilder(
                                  future: getData2(index),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      return Wrap(
                                        direction: Axis.horizontal,
                                        children: [
                                          for (int j = 0;
                                              j < blogTag.length;
                                              j++)
                                            if (index == 0)
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10.0, right: 10.0),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff696969))),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              3.0),
                                                      child: InkWell(
                                                        onTap: () {
                                                          print('Hello');
                                                          // Tag_Page(
                                                          //   k: blogTag1[index]
                                                          //       .name,
                                                          //   select:
                                                          //       blogTag1[index]
                                                          //           .id,
                                                          //   // blogDetail1:
                                                          //   //     blogDetail1,
                                                          //   // blogDetail: blogDetail,
                                                          // );
                                                        },
                                                        child: Text(
                                                          blogTag[j].name,
                                                          style: GoogleFonts
                                                              .sourceSansPro(
                                                                  color: Color(
                                                                      0xff404040)),
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                        ],
                                      );
                                    } else {
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  });
                            })
                      ],
                    ),
                  ),
                  //if (index == 0)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 15.0, right: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text('Share via:',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 15, color: Color(0xff404040))),
                        ),
                      ],
                    ),
                  ),
                  //if (index == 0)
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 15),
                    child: SingleChildScrollView(
                      primary: true,
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 30,
                        //width: 420,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: share.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () async {
                                var url = Uri.parse(share[index]['url']);
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Container(
                                  // height: 30,
                                  // width: 82,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: share[index]['color'],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 7, right: 7.0, top: 7, bottom: 7),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          child: Image.asset(
                                            share[index]['image'],
                                            height: 13,
                                            width: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 3, right: 3.0, bottom: 2.0),
                                          child: Text(
                                            share[index]['name'],
                                            style: GoogleFonts.sourceSansPro(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                        child: Text(
                          'Categories',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff292930)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 20.0),
                        child: FutureBuilder(
                            future: getData4(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return ListView.builder(
                                    itemCount: blogCateg.length,
                                    shrinkWrap: true,
                                    physics: ScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Categories_Page(
                                                            k: blogCateg[index]
                                                                .name,
                                                            select:
                                                                blogCateg[index]
                                                                    .id,
                                                            // blogDetail1:
                                                            //     blogDetail1,
                                                            // blogDetail: blogDetail,
                                                          )));
                                              // print(widget
                                              //     .blog[widget.select].categ[k].id.length);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                // for (int j = 0;
                                                //     j < blogCateg.length;
                                                //     j++)
                                                //if (index == 0)
                                                Expanded(
                                                  child: Text(
                                                    blogCateg[index].name,
                                                    textScaleFactor: 1.2,
                                                    style: GoogleFonts
                                                        .sourceSansPro(
                                                            fontSize: 15,
                                                            color: Color(
                                                                0xff525260)),
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.arrow_right,
                                                  color: Color(0xff525260),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 10.0),
                                            child: Divider(),
                                          )
                                        ],
                                      );
                                    });
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            }),
                      ),
                    ],
                  ),
                  //if (index == 0)
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 30.0, bottom: 20.0),
                    child: Text(
                      'Recent Posts',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff292930)),
                    ),
                  ),
                  // for (int i = 0; i < 5; i++)
                  //if (index == 0)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Blog_1(
                                          blog: blog,
                                          id: blogDetail[index].id.toString(),
                                          select: index,
                                        )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    FutureBuilder(
                                        future: getData1(index),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0, right: 15.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(27),
                                                child: Image.network(
                                                  snapshot.data!.guid.rendered,
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
                                      child: FutureBuilder(
                                          future: getData(),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              return Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15.0),
                                                    child: Text(
                                                      blogDetail[index]
                                                          .title
                                                          .rendered,
                                                      textScaleFactor: 1.2,
                                                      style: GoogleFonts
                                                          .sourceSansPro(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color(
                                                                  0xff292930),
                                                              fontSize: 12),
                                                    ),
                                                  ),
                                                  IntrinsicHeight(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10.0),
                                                          child: Text(
                                                            DateFormat(
                                                                    'MMM dd, yyyy')
                                                                .format(
                                                                    blogDetail[
                                                                            index]
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
                                                          padding:
                                                              EdgeInsets.only(
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
                                              );
                                            } else {
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            }
                                          }),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  indent: 20,
                                  endIndent: 20,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ]);
          } else {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
