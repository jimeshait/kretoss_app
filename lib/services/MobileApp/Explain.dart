import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Explain extends StatelessWidget {
  const Explain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 500,
      color: Colors.white,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 55.0, right: 15.0),
          child: Text(
            'Custom Mobile Application Development Company',
            textScaleFactor: 1.2,
            style: GoogleFonts.sourceSansPro(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff292930)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
          child: Text(
              'Smartphone Apps have changed how people go around their daily lives. It has been an integral part of human life. We rely on apps for almost everything we do. Mobile apps have connected the world.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                fontSize: 15,
                color: Color(0xff404040),
                height: 1.5,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
          child: RichText(
            textScaleFactor: 1.2,
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'We, as the ',
              style: GoogleFonts.sourceSansPro(
                fontSize: 15,
                color: Color(0xff404040),
                height: 1.5,
              ),
              children: <TextSpan>[
                TextSpan(
                    text:
                        'Best Mobile Application Development Services Company in USA',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15,
                        color: Color(0xff404040),
                        height: 1.5,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                  text:
                      ' and India, can help you in developing amazing applications for your business and start-ups in this highly technological era. Kretoss is the world’s leading custom mobile application development firm, providing the best and user attractive apps all over the world.',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
          child: Text(
              'We have a team of professional and top mobile app developers that are very well at the latest technology. Our team interacts with multinational companies to turn well-known concepts into visually attractive and innovative mobile apps. We have extensive knowledge and creativity in developing amazing and attractive mobile apps for a variety of platforms.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 15, color: Color(0xff404040), height: 1.5)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
          child: RichText(
            textScaleFactor: 1.2,
            textAlign: TextAlign.justify,
            text: TextSpan(
              text:
                  'We have experience selecting the best solution for your mobile application development plan, whether it be in Flutter, ',
              style: GoogleFonts.sourceSansPro(
                  fontSize: 15, color: Color(0xff404040), height: 1.5),
              children: <TextSpan>[
                TextSpan(
                    text: 'React Native App Development, ',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15,
                        color: Color(0xff4169e1),
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'or native ',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff404040))),
                TextSpan(
                    text: 'iOS App Development ',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15,
                        color: Color(0xff4169e1),
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' and Android. There are many different ways to create mobile applications.',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff404040))),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
          child: Text(
              'Kretoss Technology handles the complete business mobile application development cycle, from concept to application creation, regardless of how different or complex your needs are. We are able to match your needs because of our team of professionals, who have years of experience in the product engineering and global app solution services sectors.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 15, color: Color(0xff404040), height: 1.5)),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, top: 25.0, right: 15.0, bottom: 50.0),
          child: Text(
              'Since we have already created a large number of iPhone and Android apps in a variety of categories, we are aware of what is necessary to create a flawless iPhone and Android application. We are aware of what is needed to transform an undeveloped application idea into a successful mobile development.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 15, color: Color(0xff404040), height: 1.5)),
        ),
      ]),
    );
  }
}
