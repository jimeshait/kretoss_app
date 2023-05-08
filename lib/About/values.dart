import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/About/points.dart';

class Values extends StatelessWidget {
  const Values({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 1305,
      // width: 500,
      color: const Color(0xff27272E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.0, left: 15.0),
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
            padding: EdgeInsets.only(top: 15.0, left: 15.0),
            child: Text(
              'Why should you work with us?',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  color: Colors.white,
                  height: 1.5,
                  //fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Text(
              'Kretoss Technology is supported by technical experts who have a deep understanding of the business sector and are skilled at producing high-quality solutions.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                color: Colors.grey,
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),
          Points(),
        ],
      ),
    );
  }
}
