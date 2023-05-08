import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebsiteExplain extends StatelessWidget {
  const WebsiteExplain({super.key});

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
                'Kretoss Technology For Website Development',
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
                  'The website is evolving as an essential part of human life. Every company or business requires a website to display its expertise, products, services, talents, and other resources. A website can be used to create and update anything.',
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
                  'Kretoss Technology understands the requirements and creates professional and revenue-generated website and content management systems for start-ups and corporations. We are one of the top website development services companies that provide the best web and CMS solutions in USA, India, and all over the world.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15),
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
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 25),
                child: Image.asset(
                  'assets/images/website-development-process.png',
                  // height: 310,
                  // width: 425,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15),
              child: Text(
                'Let\s Understand Each Process Stage of Website Development One by One:',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text('1 - Planning',
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
                  'First, we gather all the relevant information, analyze the project, and build a website and CMS plan.',
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
              child: Text('2 - Web Designing',
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
                  'Following the concept, UI/UX design, and prototype, our front-end designers will develop an outstanding responsive website.',
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
              child: Text('3 – Define Content',
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
                  'Without content, a website is incomplete. As a result, we’ll add useful content to the website and optimize it for search engines like Google.',
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
              child: Text(
                '4 - Development',
                textScaleFactor: 1.2,
                textAlign: TextAlign.justify,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff292930),
                    height: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text(
                  'It’s time to start developing the website after agreeing on its objectives. The process is the website’s pre-final stage.',
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
                  'A test is required to ensure that the website is bug-free and that you receive a smooth, and user-friendly website.',
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
              child: Text('6 - Deployment',
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
                  'It’s time to publish the website when everything has been covered, from design to deployment.',
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
              child: Text('7 - Support & Maintenance',
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
                  'After the successful launch of the website, we will provide you with 24×7 support and maintenance and answer every question.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15),
              child: Text(
                'Connect with a Leading Web App Development Company and Take Benefit from Our Experience',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'Kretoss Technology is a leading and the best website development services company in USA and India. At a worldwide level, we aim to provide a seamless and robust web application to our clients.',
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
                  'By analyzing your project requirements and audiences, Kretoss Technology creates the perfect strategic model for your organization by focusing on the current technologies and trends in the market.',
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
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'We have a team of skilled and experienced web developers working on JavaScript, PHP, CakePHP, ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Laravel Development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ', NodeJS, Yii, CodeIgniter, and ',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                    TextSpan(
                        text: 'Custom Website Development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' such as Shopify, Magento, WordPress, OpenCart, and other custom development to produce new website development solutions.'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 25.0, right: 15.0, bottom: 50.0),
              child: Text(
                  'Companies use these technologies to improve their target audience and improve click-through rates, increasing brand awareness and allowing you to stand out from the crowd.',
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
