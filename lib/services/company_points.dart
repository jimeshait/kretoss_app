import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyPoints extends StatefulWidget {
  CompanyPoints({super.key});

  @override
  State<CompanyPoints> createState() => _CompanyPointsState();
}

class _CompanyPointsState extends State<CompanyPoints> {
  List point = [
    {
      'no': '1880+',
      'title': 'Projects completed by our team of web designers and developers',
    },
    {
      'no': '56',
      'title':
          'Experts in web design, branding, and digital marketing solutions.',
    },
    {
      'no': '2000+',
      'title': 'Customers who were satisfied with our work',
    },
    {
      'no': '100%',
      'title': 'Positive reviews sent by our first-time and regular customers',
    },
  ];

  @override
  String pressed = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 70.0),
      child: ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: point.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        pressed = point[index]['no'];
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: LinearGradient(
                            colors: (pressed == '')
                                ? [Color(0xff57568b), Color(0xff5956e9)]
                                : (pressed == point[index]['no'])
                                    ? [Color(0xff57568b), Color(0xff5956e9)]
                                    : [
                                        Color(0xff565677),
                                        Color.fromRGBO(39, 39, 46, 0)
                                      ],
                          )),
                      child: Center(
                        child: Text(
                          point[index]['no'],
                          style: GoogleFonts.sourceSansPro(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25.0, bottom: 18.0, left: 15.0, right: 15.0),
                  child: Text(
                    point[index]['title'],
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
