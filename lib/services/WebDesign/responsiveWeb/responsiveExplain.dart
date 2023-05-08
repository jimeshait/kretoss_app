import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResponsiveExplain extends StatelessWidget {
  ResponsiveExplain({super.key});

  List explain = [
    {
      'name':
          'Officially Google has said that responsive websites are one of the top factors of search ranking now.\n'
    },
    {
      'name':
          'When your website is responsive, you simply need to manage one website rather than two.\n'
    },
    {
      'name':
          'You won’t have to worry about duplicate information, broken redirects, or other usability issues that come with distinct mobile websites.\n'
    },
    {
      'name':
          'Because responsive websites are suitable for all devices, they provide the best usability for your visitors.'
    },
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
                'We Offer Customized Responsive Website Design Services',
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
                  'What is most important to the users? A user expects a website to load quickly, be simple to use, include the information they require and be visually appealing.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    height: 1.5,
                    color: Color(0xff404040),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'In reality, companies that claim to be “design-driven” are 89% more likely than their competitors to achieve their business objectives. That is why it is important to consider how a user interacts with a website on various devices and deliver the greatest possible experience. We offer responsive ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'web design services',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' at Kretoss Technology that can stand the test of time and several devices.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                child: Image.asset(
                  'assets/images/mobile-website-traffic.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 25.0, left: 15.0, bottom: 25.0, right: 15),
              child: Text(
                'Benefits of Custom Responsive Website Design Services',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            for (int i = 0; i < explain.length; i++)
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '\u2022',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 20,
                        color: Color(0xff404040),
                      ),
                    ),
                    Expanded(
                      child: Text(explain[i]['name'],
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                          )),
                    ),
                  ],
                ),
              ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'We are a leader in providing responsive website design services at a lower cost than other website design companies in USA and India because the service we provide is of world-class quality, allowing you to effortlessly attract more targeted customers. Our expert professionals create and deliver new concepts, ideas, solutions, and strategies that will encourage your visitors to spend more time on your website.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    height: 1.5,
                    color: Color(0xff404040),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 25.0, right: 15.0, bottom: 50.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'Organizations all over the world are rapidly adopting React Native, one of the most well-liked programming languages, to develop engaging, feature-rich, native user experiences, and cross-platform applications. If you want to create apps that will change the game for both Android and iOS, ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'React Native Development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ' is the way to go.',
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
