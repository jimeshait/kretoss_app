import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterExplain extends StatelessWidget {
  FlutterExplain({super.key});

  List explain = [
    {
      'no': '1. ',
      'name': 'Analyzing and Understanding Business Requirements\n'
    },
    {
      'no': '2. ',
      'name': 'Minimizing the Scope of Research and Development Technologies\n'
    },
    {'no': '3. ', 'name': 'App Data Flow Architecture Design and Mockups\n'},
    {
      'no': '4. ',
      'name': 'Visuals and UX design for Mobile, Web, and Desktop Apps\n'
    },
    {'no': '5. ', 'name': 'Project Management and Software Development\n'},
    {
      'no': '6. ',
      'name': 'Using APIs for Mobile, Web, and Desktop Applications\n'
    },
    {
      'no': '7. ',
      'name': 'Integrating the Best App Monitoring and Analytics Tools\n'
    },
    {'no': '8. ', 'name': 'Automated, Manual, and User Acceptance Testing\n'},
    {'no': '9. ', 'name': 'Putting Apps on the Apple and Google Play Stores\n'},
    {'no': '10. ', 'name': 'Improving Marketing and User Data Analysis\n'},
    {'no': '11. ', 'name': 'Product Support and Maintenance'},
  ];
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
                'Cross Platform Flutter App Development can Help you Grow your Business',
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
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'Kretoss Technology has established a reputation for itself in the ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Flutter development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            height: 1.5,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' sector by developing simple, engaging cross-platform apps that take advantage of the latest tools and technology. Our dedicated flutter app developers are responsible for providing you with the best and world-in-class Flutter App Development Services and meeting your project requirements.',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 15,
                          color: Color(0xff404040),
                          height: 1.5,
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'Our Flutter developers are experts at delivering cutting-edge multi-platform app solutions. This is a software development kit from Google. As the ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'best Flutter App Development Services Company in USA ',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            height: 1.5,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' and India, we allow you to hire Flutter developers from our skilled professionals.',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 15,
                          color: Color(0xff404040),
                          height: 1.5,
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 15.0),
              child: Text(
                'Our Best Process for Flutter App Development Services',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 25.0, right: 15.0, bottom: 20.0),
              child: Text(
                  'We handle each project as one-of-a-kind and unique, ensuring that the process is customized to the products or services. However, in most cases, our Flutter app development process includes the following steps:',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            for (int i = 0; i < explain.length; i++)
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(explain[i]['no'],
                        textScaleFactor: 1.2,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 15,
                          color: Color(0xff404040),
                        )),
                    Expanded(
                      child: Text(explain[i]['name'],
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.sourceSansPro(
                            //height: 1.5,
                            fontSize: 15,
                            color: Color(0xff404040),
                          )),
                    ),
                  ],
                ),
              ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                child: Image.asset(
                  'assets/images/flutter-app-development.png',
                  // height: 310,
                  // width: 410,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
              child: Text(
                'Partner With Us To Create Highly Scalable Apps Using Flutter',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'We understand how important it is to have a unique brand reputation that represents your company. Every ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'iOS app',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ', Android app',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ', and web application we develop with our Flutter developer is a perfect representation of the brand it stands for.',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 15,
                          color: Color(0xff404040),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text: 'However, as a ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'top Flutter app development firm',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ', we make sure that all of the Material Design & Cupertino components we use in your applications are fully configurable to give your users a Native copy application on every device they use.',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 15,
                          color: Color(0xff404040),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'Robust architecture and expressive, flexible UI are the products of integrating the feature-rich Flutter SDK with the visually stunning design component.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 25.0, right: 15.0, bottom: 50.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text: 'Because of this, ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Kretoss Technology',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            'is considered the most reputable and perfect business for developing flutter apps in the USA, Asia, and European Regions. We have developed a number of applications that have set new standards, and our flutter developer team is very brilliant and skilled at developing world-class apps.',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 15,
                          color: Color(0xff404040),
                        )),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
