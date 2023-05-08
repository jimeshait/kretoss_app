import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicePath extends StatelessWidget {
  ServicePath(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3});
  var text1;
  var text2;
  var text3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0, left: 15.0),
      child: Row(
        children: [
          Text(
            text1,
            style: GoogleFonts.sourceSansPro(color: Color(0xff999FAE)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xff999FAE),
              radius: 2,
            ),
          ),
          Text(
            text2,
            style: GoogleFonts.sourceSansPro(color: Color(0xff999FAE)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xff999FAE),
              radius: 2,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                text3,
                style: GoogleFonts.sourceSansPro(
                    color: Color(0xff5956E9), fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
