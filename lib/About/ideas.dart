import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/About/casePage.dart';

class Ideas extends StatelessWidget {
  const Ideas({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 15, right: 15),
            child: Image.asset(
              'assets/images/case-study.png',
              height: 350,
              width: 600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15.0),
            child: Text(
              'Who we are',
              textAlign: TextAlign.left,
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  color: Color(0xffC75C6F), fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 18.0),
            child: Text(
              'We Convert your Ideas into Reality',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Color(0xff292930)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 28.0, right: 15.0),
            child: Text(
                'We do not believe in just acquiring new clients, rather we pay attention to sustaining clients with the highest privileges.',
                textScaleFactor: 1.2,
                textAlign: TextAlign.justify,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 15,
                  color: Color(0xff404040),
                  height: 1.5,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
            child: Text(
                'Transparency is one of the pillars at which we stand. Our enthusiasm is truly get inspired by the words spoken by esteemed clients.',
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
            child: RichText(
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              text: TextSpan(
                text:
                    'World-class experts are working to deliver the best online solution for ',
                style: GoogleFonts.sourceSansPro(
                  fontSize: 15,
                  color: Color(0xff404040),
                  height: 1.5,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Web and Mobile App Development',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 15,
                          color: Color(0xff404040),
                          height: 1.5,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: ' by following the approach of smart technology.',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 15,
                        color: Color(0xff404040),
                        height: 1.5,
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, top: 20.0, right: 15.0, bottom: 20.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                // ignore: sized_box_for_whitespace
                child: Container(
                    // height: 60,
                    // width: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: const Color(0xff5956e9)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CasePage(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            'Read More',
                            style: GoogleFonts.sourceSansPro(fontSize: 19),
                          ),
                        )))),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 25.0),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        '500 +',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 20,
                            color: Color(0xffC75C6F),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Web',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040)),
                      ),
                      Text('Solution',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 15, color: Color(0xff404040)))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                    child: VerticalDivider(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        '20 +',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 20,
                            color: Color(0xffC75C6F),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Technocrat',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040)),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                    child: VerticalDivider(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        '600 +',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 20,
                            color: Color(0xffC75C6F),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Satisfied',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040)),
                      ),
                      Text('Customer',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 15, color: Color(0xff404040)))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
