import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Path extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var text1;
  // ignore: prefer_typing_uninitialized_variables
  var text2;
  Path({required this.text1, required this.text2, super.key});

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
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xff999FAE),
              radius: 2,
            ),
          ),
          Text(
            text2,
            style: GoogleFonts.sourceSansPro(
                color: Color(0xff5956E9), fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
