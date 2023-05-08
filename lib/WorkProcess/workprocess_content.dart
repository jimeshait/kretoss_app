// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkProcess_Content extends StatelessWidget {
  const WorkProcess_Content({super.key});

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
            'Our work process',
            style: GoogleFonts.sourceSansPro(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff292930)),
          ),
        ),
        Image.asset('assets/images/banner-thumb.png'),
        Padding(
          padding:
              EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0, bottom: 40.0),
          child: Text(
            'Our firm is one of the most advanced web development companies with a prestigious and remarkable industry experience. Our team consists of one of the most experienced developers and engineers, and this the reason our work procedure is of the best and refined procedures of work in the respective industry.',
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
