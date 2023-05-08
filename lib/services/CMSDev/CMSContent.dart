import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Contact/contact_page.dart';

class CMSContent extends StatelessWidget {
  const CMSContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 500,
      // height: 880,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15.0, right: 15.0),
            child: Text(
              'Custom Website Development Services',
              style: GoogleFonts.sourceSansPro(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930)),
            ),
          ),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
              child: Image.asset(
                'assets/images/cmsdev.png',
                // height: 310,
                // width: 410,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
            child: Text(
              'You can better represent your products and services with the power of flexible content management system software. With Custom Webiste development services, we help you get instant content changes and improve your business strategy.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                color: Color(0xff404040),
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, top: 23.0, right: 30.0, bottom: 50.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      // height: 55,
                      // width: 270,
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
                              'Get Free Quote Now',
                              style: GoogleFonts.sourceSansPro(fontSize: 19),
                            ),
                          )))),
            ),
          ),
        ],
      ),
    );
  }
}
