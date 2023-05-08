// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatelessWidget {
  Address({super.key});

  List address = [
    {
      'image': 'assets/images/india.jpg',
      'country': 'India',
      'address':
          'F Block 712, Titanium City Center, Near Sachin Tower, Anand Nagar, Ahmedabad, India – 380015'
    },
    {
      'image': 'assets/images/us.jpg',
      'country': 'USA',
      'address': '114 August Ln Lansdale, Pennsylvania, USA.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 933,
      // width: 500,
      color: const Color(0xff27272E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 55.0, left: 15.0),
            child: Text(
              'Find Us',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  color: Color(0xffC75C6F), fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
            child: Text(
              'Our office',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
            physics: const ScrollPhysics(),
            itemCount: address.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30.0, left: 15, right: 15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          address[index]['image'],
                          fit: BoxFit.contain,
                          width: double.maxFinite,
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      address[index]['country'],
                      textScaleFactor: 1.2,
                      style: GoogleFonts.sourceSansPro(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      address[index]['address'],
                      textScaleFactor: 1.2,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.sourceSansPro(
                        height: 1.5,
                        color: Color(0xff999FAE),
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              );
            },
          ),
          const SizedBox(
            height: 55,
          )
        ],
      ),
    );
  }
}
