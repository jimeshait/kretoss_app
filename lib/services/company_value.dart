import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'company_points.dart';

class CompanyValue extends StatelessWidget {
  CompanyValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 1200,
      // width: 500,
      color: Color(0xff27272E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 15.0),
            child: Text(
              'Our Values',
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
              'Why choose our company for your projects?',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  color: Colors.white,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Text(
              'We are a team of professional and enthusiastic people, who like what they do and are always in the process of growing and improving their skills.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                  color: Colors.grey, fontSize: 15, height: 1.5),
            ),
          ),
          CompanyPoints(),
        ],
      ),
    );
  }
}
