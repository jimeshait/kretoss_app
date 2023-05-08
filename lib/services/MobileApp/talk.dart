import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Contact/contact_page.dart';

class Talk extends StatelessWidget {
  const Talk({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/discuss.jpg',
          fit: BoxFit.cover,
          height: 392,
          width: double.maxFinite,
          opacity: const AlwaysStoppedAnimation(.50),
        ),
        Container(
          height: 392,
          width: double.maxFinite,
          color: Colors.black54,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 55.0, left: 20.0, right: 20.0),
                child: Text(
                  'Discuss Your Project with Our Specialists',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      height: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                child: Text(
                  'We always look for a long-term relationship. Kretoss Technology is a trustworthy partner for all of your Web and Mobile Application development needs.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20, color: Colors.white, height: 1.5),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, bottom: 30.0, left: 30, right: 30),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                          // height: 50,
                          // width: 120,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff5956E9)),
                              ),
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
                                  'Let\'s Talk',
                                  style:
                                      GoogleFonts.sourceSansPro(fontSize: 19),
                                ),
                              )))),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
