// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kretoss_webapp/free_quote.dart';

import './free_quote.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffECF2F6),
        // height: 1550,
        // width: 950,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15.0),
              child: Text(
                'Get in touch to know more',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                  color: Color(0xffC75C6F),
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15.0),
              child: Text(
                'About Us',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 30.0, right: 15.0),
              child: Text(
                  'The technocrats are always at their toes for assistance because our motto always revolves around the fulfilment of the client’s vision. The consultation is always available without any extra penny. it gives extra mileage to your Vision.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0),
              child: Text(
                'Web and Mobile Application Development Company in USA, India',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15.0),
              child: Text(
                'Savings of 60% and Two Times Faster Delivery',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    height: 1.5,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 28.0, right: 15.0),
              child: Text(
                  'We are an internationally recognized web and mobile application development company from India meeting the digital demands of thousands of companies. With more than 17 years of experience, our web development company has worked with numerous startups and established businesses to create cutting-edge B2B and B2C web apps for a range of sectors.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5)),
            ),
            Center(
              child: Image.asset(
                'assets/images/toplogo.png',
                height: 200,
                width: 200,
              ),
            ),
            FreeQuote(),
          ],
        ));
  }
}
