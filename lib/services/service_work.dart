import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../work.dart';
import 'services_work.dart';

class ServiceWork extends StatelessWidget {
  const ServiceWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 2840,
      // width: 700,
      decoration: BoxDecoration(
        color: Color(0xffECF2F6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 15.0),
            child: Text(
              'What We Can Do For You',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                color: Color(0xffC75C6F),
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Text(
              'Services we can help you with',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff292930)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 15.0, bottom: 35.0, right: 15),
            child: Text(
              'We offer edge web and mobile application development services, using the most cutting-edge technology available. We can develop applications, websites, or both in the shortest amount of time possible to help you to take your business to the next level.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                color: Color(0xff404040),
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),
          ServicesWork()
        ],
      ),
    );
  }
}
