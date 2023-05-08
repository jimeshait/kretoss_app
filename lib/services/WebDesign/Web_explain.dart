import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebExplain extends StatelessWidget {
  const WebExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 500,
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 55.0, left: 15.0, right: 15.0),
              child: Text(
                'Custom Web Design Services Company',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'A poor user experience on your website may result in lower lead conversion. So, how can you fix that? Connect With Kretoss Technology. the top custom web design services company in the world. We are a group of expert website designers dedicated to helping you in creating unique user experiences that exceed current website design standards.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'With a client retention rate of 97%, Kretoss Technology keeps up to date with trends to keep you one step ahead of the competition. We become the bridge between your requirements and development and design possibilities. We expand our responsive custom web design services to assist you to keep up with SEO trends, based on our years of experience and expertise.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'As the top custom web design services agency, we optimize your user interface to help you find a balance between your needs and what your users or audiences find most attractive. We aim to create profitable custom web design solutions that improve your user experience immensely across a variety of screen sizes and operating systems. We design incredibly attractive web solutions using cutting-edge technology and extensive industry understanding.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                'Process We Follow For Custom Web Design',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 25, bottom: 25),
                child: Image.asset(
                  'assets/images/web-design-work.png',
                  // height: 310,
                  // width: 425,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
              child: Text('1 - Discovery',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15,
                      color: Color(0xff292930),
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text(
                  'Before beginning the project, we do extensive market research, competitive analysis, target audience analysis, and client requirements. This helps us to effectively present brand awareness across all website elements.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text('2 - Prototype',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15,
                      color: Color(0xff292930),
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text(
                  'To identify the website’s best navigability, we start by creating a user flow map. The project’s overall structure, functionality, and content are established through wireframing and prototyping. We proceed to the following level once the clients have given their permission.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text('3 - Design',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15,
                      color: Color(0xff292930),
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text(
                  'The overall appearance and feel of a website are determined by UI design. Our web designers keep up to date with new trends and use the most appropriate colors, visual effects, fonts, and animations for the brand. These factors determine how customers evaluate and interact with your business website.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text('4 - Development',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15,
                      color: Color(0xff292930),
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'Furthermore, to bring the website alive, we develop functions. We include a complete front and backend web solution using ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'AngularJS',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ', React, HTML5/CSS3, ',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                    TextSpan(
                        text: 'NodeJS',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ', PHP (Laravel, Cake PHP, CodeIgniter), MySQL, MongoDB, and other technologies.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text('5 - Testing',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15,
                      color: Color(0xff292930),
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text(
                  'We thoroughly check the website’s codes, features, and functionalities before it goes online. That way, we can confirm that the website’s features and operations are error-free and provide an excellent user experience (UX).',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text('6 - Support and Maintenance',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15,
                      color: Color(0xff292930),
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 20.0, right: 15.0, bottom: 50.0),
              child: Text(
                  'Hire our skilled custom web designers or web developers or both right now if you need to upgrade any functionality, add new features, or do complete maintenance. We provide a comprehensive maintenance package that includes server load monitoring, code backups, and security assessments.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
          ]),
    );
  }
}
