import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Ideas_Content extends StatelessWidget {
  const Ideas_Content({super.key});

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
            'We Convert your Ideas into Reality',
            style: GoogleFonts.sourceSansPro(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff292930)),
          ),
        ),
        Image.asset('assets/images/case-study.png'),
        Padding(
          padding:
              EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0, bottom: 40.0),
          child: Text(
            'Kretoss technology is the best Web & App Development agency that expands services across the Globe. With Decades of experience, we offer high-end Web development services. We always satisfy you with our services by utilizing technology in the best innovative manner.\n\nWith years of experience, we have worked on thousands of projects of various domains in which web technologies are major. After getting the clients requirements, our professionals start working on the action plan. We guarantee the best product development, and once you experience it, you will always hire us for your future work.',
            textScaleFactor: 1.2,
            textAlign: TextAlign.justify,
            style: GoogleFonts.sourceSansPro(
              color: Color(0xff404040),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
