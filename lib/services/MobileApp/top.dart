import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Top extends StatelessWidget {
  Top({super.key, required this.top, required this.text, required this.text2});
  final List top;
  var text;
  var text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 1250,
      // width: 500,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 55.0, right: 15.0),
            child: Text(
              text,
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            child: Text(text2,
                textScaleFactor: 1.2,
                textAlign: TextAlign.justify,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 15,
                  color: Color(0xff404040),
                  height: 1.5,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 25.0, bottom: 35.0),
            child: GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: top.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // crossAxisSpacing: 1.3,
                  // mainAxisSpacing: 3.5,
                  childAspectRatio: 2.0,
                  mainAxisExtent: 190),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      // height: 50,
                      // width: 50,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              top[index]['image'],
                              height: 50,
                              width: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0,
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 2.0),
                              child: Text(
                                top[index]['name'],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: 17,
                                  color: Color(0xff404040),
                                  height: 1.5,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
