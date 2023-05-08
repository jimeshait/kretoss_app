import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class NumGame extends StatelessWidget {
  NumGame({super.key});
  List data = [
    {
      'icon': 'https://kretoss.com/wp-content/uploads/2022/07/web-solution.png',
      'name': 'Web Solution',
      'number': '500+',
    },
    {
      'icon': 'https://kretoss.com/wp-content/uploads/2022/07/technocrat.png',
      'name': 'Technocrat',
      'number': '20+',
    },
    {
      'icon':
          'https://kretoss.com/wp-content/uploads/2022/07/satisfied-customer.png',
      'name': 'Satisfied Customer',
      'number': '600+',
    },
    {
      'icon': 'https://kretoss.com/wp-content/uploads/2022/07/real-reviews.png',
      'name': 'Real Reviews',
      'number': '100%',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 623,
      // width: 500,
      color: Color(0xff27272E),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15.0),
            child: Text(
              'Featured Case Study',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                color: Color(0xffC75C6F),
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 15.0, right: 15.0, bottom: 15.0),
            child: Text(
              'Why choose our company for your projects?',
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  height: 1.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35.0, right: 15.0),
            child: GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // crossAxisSpacing: 2.0,
                    // mainAxisSpacing: 2.0,
                    childAspectRatio: 0.3,
                    mainAxisExtent: 210),
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 15.0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        // height: 10,
                        // width: 10,
                        color: Color(0xff2D2D33),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0),
                              child: Image.network(
                                data[index]['icon'],
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 10.0),
                              child: Text(
                                data[index]['number'],
                                style: GoogleFonts.sourceSansPro(
                                    fontSize: 25, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, bottom: 10.0, left: 5, right: 5),
                              child: Text(
                                data[index]['name'],
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.2,
                                style: GoogleFonts.sourceSansPro(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
