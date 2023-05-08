import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/services/expert_num.dart';

import '../Contact/contact_page.dart';

class Expert extends StatelessWidget {
  Expert({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 1280,
      // width: 500,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 15.0),
            child: Text(
              'Experts in field',
              textScaleFactor: 1.2,
              textAlign: TextAlign.left,
              style: GoogleFonts.sourceSansPro(
                  color: Color(0xffC75C6F), fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20.0),
            child: Text(
              'What makes us special?',
              style: GoogleFonts.sourceSansPro(
                  height: 1.5,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
            child: Text(
                'Kretoss Technology is one of the best web and mobile app development companies in the USA and India. Our professional web and mobile app developers create high-quality mobile applications and Websites using cutting-edge native and cross-platform technology. Our team has extensive experience creating innovative and one-of-a-kind apps to help you in growing your business. Take a look at some of our most recent stats.',
                textScaleFactor: 1.2,
                textAlign: TextAlign.justify,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 15,
                  color: Color(0xff404040),
                  height: 1.5,
                )),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, top: 50.0, right: 30.0, bottom: 25.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      // height: 55,
                      // width: 260,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff5956E9)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Contact_Page(
                                          isAppBar: true,
                                        )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              'Connect with our Expert',
                              style: GoogleFonts.sourceSansPro(fontSize: 19),
                            ),
                          )))),
            ),
          ),
          Expert_Num()
        ],
      ),
    );
  }
}
