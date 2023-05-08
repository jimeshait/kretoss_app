import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/About/ideas.dart';
import 'package:kretoss_webapp/About/idea/ideas_page.dart';

class PageSroll2 extends StatelessWidget {
  const PageSroll2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Featured Case Study',
            textScaleFactor: 1.2,
            textAlign: TextAlign.left,
            style: GoogleFonts.sourceSansPro(
              color: Color(0xffC75C6F),
              height: 1.5,
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15.0),
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
          padding: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
          child: Text(
              'Kretoss technology is the best Web and Mobile Application Development company that expands services across the Globe.',
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
          child: Text(
              'With decades of experience, we offer high-end Web development services. We always satisfy you with our services by utilizing technology in the best innovative manner.',
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
          child: Text(
              'With years of experience we have worked on thousands of projects in various domains in which web technologies are major. After getting the clients requirements, our professionals start working on the action plan. We guarantee the best product development, and once you experience it, you will always hire us for your future work.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                fontSize: 15,
                color: Color(0xff404040),
                height: 1.5,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, top: 20.0, right: 15.0, bottom: 20.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                  // height: 60,
                  // width: 120,
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xff5956E9)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Ideas_Page()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'Read More',
                          style: GoogleFonts.sourceSansPro(fontSize: 19),
                        ),
                      )))),
        ),
        Flexible(
          child: Center(
            child: Image.asset(
              'assets/images/case-study.png',
              height: 480,
              width: 680,
            ),
          ),
        ),
      ],
    );
  }
}
