import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Choose_Content extends StatelessWidget {
  const Choose_Content({super.key});

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
            'Why Choose Our Company for your Projects?',
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
            'Kretoss is known for its high professionalism and on-time delivery. We cater to the need of people. We are Offering the best online solution economically. The place is exclusive, where you get the exact product based on the requirement, along with an extra flavour of add-ons that increase the versatility of the product. All these consolidated features necessitate the demand of Kretoss and make it unique',
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
