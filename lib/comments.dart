import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/Contact/contact_page.dart';
import 'package:kretoss_webapp/free_quote.dart';
import './free_quote.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Top Web and Mobile Application Development Company',
          style: GoogleFonts.sourceSansPro(
            color: Color(0xff27272E),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Image.asset(
            'assets/images/Main.png',
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30.0),
          child: Text(
              'As a top-level Custom Web and Mobile Application Development Company in USA and India, our services take your company to the next level, closing the gap between you and the success you desire.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                height: 1.5,
                color: Color(0xff404040),
                fontSize: 15,
              )
              // (
              //   height: 1.5,
              //   color: Color(0xff404040),
              //   fontSize: 15,
              //   //fontFamily: 'sans-serif',
              // ),
              ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
              text:
                  'Your digital partner for innovative design and reliable Web, Mobile, and Cloud solutions. Kretoss Technology is the best and most renowned and Top',
              style: GoogleFonts.sourceSansPro(
                height: 1.5,
                color: Color(0xff404040),
                fontSize: 15,
                //fontFamily: 'sans-serif',
              ),
              children: [
                TextSpan(
                  text:
                      ' Web and Mobile Application Development Company in USA',
                  style: GoogleFonts.sourceSansPro(
                    height: 1.5,
                    color: Color(0xff404040),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    //fontFamily: 'sans-serif',
                  ),
                ),
                TextSpan(
                  text:
                      ' and India with an excellent global presence. We are deeply focused on creating highly engaging apps that carefully follow business requirements and serve a wide range of projects with the highest client satisfaction in mind.',
                  style: GoogleFonts.sourceSansPro(
                    height: 1.5,
                    color: Color(0xff404040),
                    fontSize: 15,
                    //fontFamily: 'sans-serif',
                  ),
                )
              ]),
          textScaleFactor: 1.2,
          textAlign: TextAlign.justify,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 30.0, bottom: 30.0, left: 8.0, right: 8.0),
            child: Container(
              // height: 33,
              // width: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff5956E9))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Contact_Page(
                                isAppBar: true,
                              )),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      'Get a Free Quote',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 19,
                        //fontFamily: 'sans-serif',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
          child: Image.asset(
            'assets/images/Home.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            'Improve productivity and deliver better experiences!',
            textScaleFactor: 1.2,
            //textAlign: TextAlign.justify,
            style: GoogleFonts.sourceSansPro(
              fontSize: 15, color: Color(0xff404040), height: 1.5,
              //fontFamily: 'sans-serif',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            'Make Sure your Business is Secure and Highly Available',
            textAlign: TextAlign.justify,
            textScaleFactor: 1.2,
            style: GoogleFonts.sourceSansPro(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.5,
                color: Color(0xff292930)
                //fontFamily: 'sans-serif',
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Expanded(
                  child: Wrap(
                    direction: Axis.horizontal,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          'Mr. Ankur Patel founded Kretoss Technology in 2015 with the goal of assisting and supporting the expansion of small and medium-sized businesses. They can establish an online presence for their company and build it to generate more and more revenue.',
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.sourceSansPro(
                              height: 1.5,
                              fontSize: 15,
                              //fontFamily: 'sans-serif',
                              color: Color(0xff404040)),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, top: 15.0),
                        child: Text(
                          'We are experts in bespoke development, digital marketing, graphic design, and the creation of mobile apps and APIs.',
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.sourceSansPro(
                            height: 1.5,
                            //fontFamily: 'sans-serif',
                            color: Color(0xff404040),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, top: 15.0),
                        child: Text(
                          'Our office is in India, a nation known for its solid programming abilities, low prices, and dependable people.',
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.sourceSansPro(
                              height: 1.5,
                              //fontFamily: 'sans-serif',
                              fontSize: 15,
                              color: Color(0xff404040)),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, top: 15.0),
                        child: RichText(
                          text: TextSpan(
                              text:
                                  'As a leading IT firm in USA, we also offer Flutter App Development, ',
                              style: GoogleFonts.sourceSansPro(
                                fontSize: 15, color: Color(0xff404040),
                                height: 1.5,
                                //fontFamily: 'sans-serif',
                              ),
                              children: [
                                TextSpan(
                                  text: 'React Native App Development,',
                                  style: GoogleFonts.sourceSansPro(
                                    color: Color(0xff4169e1),
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                    //fontFamily: 'sans-serif',
                                    fontSize: 15,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                        ' AngularJS Development, ReactJS Development, PHP Web Development, Laravel Development, Node JS Development, Shopify Development, '),
                                TextSpan(
                                  text: 'WordPress Development,',
                                  style: GoogleFonts.sourceSansPro(
                                    height: 1.5,
                                    color: Color(0xff4169e1),
                                    fontWeight: FontWeight.bold,
                                    //fontFamily: 'sans-serif',
                                    fontSize: 15,
                                  ),
                                ),
                                TextSpan(
                                    text: ' and many more development services')
                              ]),
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
