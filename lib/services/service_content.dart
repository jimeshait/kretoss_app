import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Service_Content extends StatelessWidget {
  const Service_Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 20, left: 15.0, bottom: 10.0, right: 15.0),
          child: Text(
            'We provide a wide range of creative services',
            style: GoogleFonts.sourceSansPro(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff292930)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
          child: Image.asset('assets/images/banner-thumb.png'),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0, bottom: 40.0),
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
      ],
    );
  }
}
