import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Connect extends StatelessWidget {
  const Connect({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
          child: Container(
            // width: 500,
            // height: 303,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 20, top: 40),
                    child: Text(
                      'Let\'s Get In Touch',
                      textScaleFactor: 1.2,
                      style: GoogleFonts.sourceSansPro(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Image.asset(
                              'assets/images/email-icon-footer.png',
                              height: 23,
                              width: 23,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Text(
                              'service@kretoss.in',
                              textScaleFactor: 1.2,
                              style: GoogleFonts.sourceSansPro(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Row(children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Image.asset(
                            'assets/images/Phone-Icon.png',
                            height: 23,
                            width: 23,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    '(+1) 815 570 9603',
                                    textScaleFactor: 1.2,
                                    style: GoogleFonts.sourceSansPro(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/images/usa-flag-footer.png',
                                      fit: BoxFit.cover,
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      '+91 96879 90806',
                                      textScaleFactor: 1.2,
                                      style: GoogleFonts.sourceSansPro(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        'assets/images/india-flag-footer.png',
                                        fit: BoxFit.cover,
                                        height: 25,
                                        width: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 20.0, bottom: 40),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Image.asset(
                              'assets/images/footer_skype_icon.png',
                              height: 23,
                              width: 23,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Text(
                              'Skype',
                              textScaleFactor: 1.2,
                              style: GoogleFonts.sourceSansPro(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      )),
                ]),
          ),
        )
      ],
    );
  }
}
