import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/firstPage.dart';
import 'package:kretoss_webapp/main.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xffFFFFFF),
        // width: 500,
        // height: 650,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15, right: 15),
                child: Image.asset(
                  'assets/images/team.png',
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15),
              child: Text(
                'Our Team',
                textAlign: TextAlign.left,
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    color: Color(0xffC75C6F), fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 18.0, right: 15.0),
              child: Text(
                'Alone we can do so little; together we can do so much.',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text(
                  'We have a team of skilled and experienced web and mobile application developers who know how to develop websites and apps. They can handle appropriate design and programming to make products that scale.',
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
                    left: 30.0, top: 45.0, right: 30.0, bottom: 15.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    // ignore: sized_box_for_whitespace
                    child: Container(
                        // height: 55,
                        // width: 200,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xff5956e9)),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHome()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                'Our Team',
                                style: GoogleFonts.sourceSansPro(fontSize: 19),
                              ),
                            )))),
              ),
            ),
            SizedBox(
              height: 45,
            )
          ],
        ));
  }
}
