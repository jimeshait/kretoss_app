import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Points extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Points({super.key});

  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
  List point = [
    {
      'no': '1',
      'title': 'We Always Analyze The Market',
      'desc':
          'We do deep market analysis that can help to identify how to better position your business to be competitive and serve your customers.'
    },
    {
      'no': '2',
      'title': 'We Have The Most Brilliant Ideas',
      'desc':
          'Scaling a business effectively and efficiently can be difficult. We use a smart approach, effort, and brilliant ideas from various parts of the business.'
    },
    {
      'no': '3',
      'title': 'We Always Make Successful Projects',
      'desc':
          'Projects represent an organization\'s efforts to build a competitive advantage and increase profits. Successful projects set businesses apart from those that are having trouble competing.'
    },
  ];
  @override
  // ignore: override_on_non_overriding_member
  String pressed = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 70.0),
      child: ListView.builder(
          physics: const ScrollPhysics(),
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
                                ? [
                                    const Color(0xff57568b),
                                    const Color(0xff5956e9)
                                  ]
                                : (pressed == point[index]['no'])
                                    ? [
                                        const Color(0xff57568b),
                                        const Color(0xff5956e9)
                                      ]
                                    : [
                                        const Color(0xff565677),
                                        const Color.fromRGBO(39, 39, 46, 0)
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
                  padding: const EdgeInsets.only(top: 25.0, bottom: 18.0),
                  child: Text(
                    point[index]['title'],
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 15.0, left: 15.0, right: 15.0),
                  child: Text(
                    point[index]['desc'],
                    textAlign: TextAlign.justify,
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                      color: (pressed == '')
                          ? Colors.white
                          : (pressed == point[index]['no'])
                              ? Colors.white
                              : Colors.grey,
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
