import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Blog_Info extends StatelessWidget {
  Blog_Info(
      {super.key,
      required this.text,
      required this.text1,
      required this.text2,
      required this.text3});
  // ignore: prefer_typing_uninitialized_variables
  var text;
  var text1;
  var text2;
  var text3;
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      // width: 500,
      // height: 880,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15.0, right: 15.0),
            child: Text(
              text,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35.0),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 15.0),
                      child: Text(
                        text1,
                        //textScaleFactor: 1.2,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.sourceSansPro(
                          color: Color(0xff404040),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    indent: 24,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      text2,
                      //textScaleFactor: 1.2,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.sourceSansPro(
                        color: Color(0xff404040),
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    indent: 24,
                    thickness: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0, right: 15.0),
                      child: Text(
                        text3,
                        //textScaleFactor: 1.2,
                        //textAlign: TextAlign.justify,
                        style: GoogleFonts.sourceSansPro(
                          color: Color(0xff404040),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
