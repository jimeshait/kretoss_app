import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hiring extends StatelessWidget {
  const Hiring({super.key});

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
          padding: EdgeInsets.only(top: 20, left: 15.0),
          child: Text(
            'Hiring',
            style: GoogleFonts.sourceSansPro(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff292930)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Center(
            child: Image.asset(
              'assets/images/hiring.png',
              height: 310,
              width: 410,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 35, left: 15.0, right: 15.0),
          child: Text(
            'Better Together, Grow Together',
            textScaleFactor: 1.2,
            style: GoogleFonts.sourceSansPro(
                fontSize: 20,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: Color(0xff292930)),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0, bottom: 50.0),
          child: Text(
            'We rank among the top workplaces. Kretoss Technology creates an environment where you can develop internally, showcase your talents, and make the most of who you are. We support the development of new procedures that make your job easier.',
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
