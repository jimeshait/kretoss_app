import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Working extends StatelessWidget {
  const Working({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
        child: Container(
            //width: 500,
            //height: 333,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 20, top: 40),
                  child: Text(
                    'Working Hours',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 20, top: 20),
                  child: Text(
                    'Monday to Friday :',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 20, top: 5),
                  child: Text(
                    '10 AM to 7 PM',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                      color: Colors.white,
                      height: 1.5,
                      fontSize: 13,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 20, top: 10),
                  child: Text(
                    'Saturday & Sunday :',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 20, top: 5),
                  child: Text(
                    'Closed',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                      color: Colors.white,
                      height: 1.5,
                      fontSize: 13,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 20, top: 25),
                  child: Text(
                    'Follow us on Social Media',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 20, top: 20, bottom: 40),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 18,
                        child: InkWell(
                          onTap: () async {
                            var url = Uri.parse(
                                "https://www.facebook.com/kretosstechnology/");
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Image.asset(
                            'assets/images/facebook.png',
                            height: 20,
                            width: 20,
                            color: const Color(0xff5d59ea),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: InkWell(
                            onTap: () async {
                              var url = Uri.parse(
                                  "https://www.instagram.com/kretoss_technology_/");
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Image.asset(
                              'assets/images/instagram.png',
                              height: 20,
                              width: 20,
                              color: const Color(0xff5d59ea),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: InkWell(
                            onTap: () async {
                              var url = Uri.parse(
                                  "https://www.linkedin.com/uas/login-submit");
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Image.asset(
                              'assets/images/linkedin.png',
                              height: 20,
                              width: 20,
                              color: const Color(0xff5d59ea),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: InkWell(
                            onTap: () async {
                              var url = Uri.parse(
                                  "https://twitter.com/KretossTechnol3");
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Image.asset(
                              'assets/images/twitter.png',
                              height: 20,
                              width: 20,
                              color: const Color(0xff5d59ea),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: InkWell(
                            onTap: () async {
                              var url = Uri.parse(
                                  "https://www.pinterest.com/kretosstechnology/");
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Image.asset(
                              'assets/images/pinterest.png',
                              height: 20,
                              width: 20,
                              color: const Color(0xff5d59ea),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
