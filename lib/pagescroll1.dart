import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageScroll1 extends StatelessWidget {
  const PageScroll1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Featured Case Study',
            textScaleFactor: 1.2,
            textAlign: TextAlign.left,
            style: GoogleFonts.sourceSansPro(
              color: Color(0xffC75C6F),
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15.0),
          child: Text(
            'Why Choose Our Company for your Projects?',
            textScaleFactor: 1.2,
            style: GoogleFonts.sourceSansPro(
                height: 1.5,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff292930)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
          child: Text(
              'Kretoss is known for its high professionalism and on-time delivery. We cater to the need of people.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                  height: 1.5, fontSize: 15, color: Color(0xff404040))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
          child: Text(
              'We are Offering the best online solution economically. The place is exclusive, where you get the exact product based on the requirement, along with an extra flavor of add-ons that increase the versatility of the product.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                fontSize: 15,
                color: Color(0xff404040),
                height: 1.5,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
          child: Text(
              'All these consolidated features necessitate the demand for Kretoss and make it unique',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 15, color: Color(0xff404040), height: 1.5)),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
            child: Image.asset(
              'assets/images/Award.png',
            ),
          ),
        ),
      ],
    );
  }
}
