import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15.0, bottom: 10.0),
          child: Text(
            'Our Projects',
            style: GoogleFonts.sourceSansPro(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff292930)),
          ),
        ),
        Image.asset('assets/images/portfolio_img.png'),
        Padding(
          padding:
              EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0, bottom: 35.0),
          child: Text(
            'We aim to deliver the highest quality work for each of our client’s projects. We’d like to show you some of our client’s projects of them that you will enjoy.',
            textScaleFactor: 1.2,
            textAlign: TextAlign.justify,
            style: GoogleFonts.sourceSansPro(
                fontSize: 15, color: Color(0xff404040), height: 1.5),
          ),
        ),
      ],
    );
  }
}
