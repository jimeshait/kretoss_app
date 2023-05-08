import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import './content.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10.0),
              child: Text(
                'About Kretoss Technology',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/banner.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: RichText(
              text: TextSpan(
                  text: 'Kretoss technology is the best',
                  style: GoogleFonts.sourceSansPro(
                    color: Color(0xff404040),
                    fontSize: 15,
                    height: 1.5,
                    //fontFamily: 'sans-serif',
                  ),
                  children: [
                    TextSpan(
                      text: ' Web and Mobile App Development Agency',
                      style: GoogleFonts.sourceSansPro(
                        color: Color(0xff404040),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.5,
                        //fontFamily: 'sans-serif',
                      ),
                    ),
                    TextSpan(
                      text:
                          ' that expands its services in USA, Canada, UK, India, and across the globe.',
                      style: GoogleFonts.sourceSansPro(
                        color: Color(0xff404040),
                        fontSize: 15,
                        height: 1.5,
                        //fontFamily: 'sans-serif',
                      ),
                    )
                  ]),
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'With decades of experience, we offer you high-end Web development services that have no match. We always satisfy you with our services by utilizing technology in the best innovative manner. With years of experience, we have worked on thousands of projects in various domains in which web technologies are major.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                color: Color(0xff404040),
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0, bottom: 50.0),
            child: Text(
              'After getting the client\’s requirements, our professionals start working on the action plan. We guarantee the best product development, and once you experience it, You will always hire us for your future work.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                color: Color(0xff404040),
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
