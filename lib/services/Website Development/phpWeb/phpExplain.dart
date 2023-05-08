import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhpExplain extends StatelessWidget {
  const PhpExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 500,
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55.0, left: 15.0, right: 15),
              child: Text(
                'Why does your Business Need PHP Web Development Services?',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'PHP is a web development open-source server-side scripting language that has been widely used for a variety of websites all over the world. It’s also useful for general programming tasks.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'Considering that the PHP language is currently used by millions of websites, your eCommerce business will have to be built on it as well to ensure the effectiveness of other PHP-based websites.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'Kretoss Technology could be the perfect business for the job if you need a developer to create a PHP-based website solution for your business.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'Switching to PHP has the advantage of being free software under the PHP License. Many web servers can support a PHP-based website, so that’s just one thing to worry about. Most operating systems and platforms support PHP as a standalone environment.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'You can download it for FREE, and you can use it without worrying about it not working with your servers, operating systems, or platforms. By ensuring compatibility, you can relax knowing that your eCommerce website will run smoothly the majority of the time. If you come across any issues that require a technical solution, you can contact Kretoss Technology for assistance right away.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15),
              child: Text(
                'Process We Follow For PHP Web Development',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, top: 25.0, bottom: 25.0, right: 15.0),
                child: Image.asset(
                  'assets/images/php-web.png',
                  // height: 310,
                  // width: 425,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text: 'Kretoss Technology is one of the ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            ' best PHP Web Development Services companies in the USA',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            'and India and has been creating web apps in PHP for the last 7 years. For any business domain and vertical, we develop server applications and PHP websites using the standard LAMP setups.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'To develop large-scale websites, we are professionals in numerous frameworks including Laravel, CakePHP, Zend Framework, and Yii Frameworks. One of the popular PHP web development frameworks is ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Laravel',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff0d6efd),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            '. It enables the creation of various-sized websites.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
              child: Text(
                  'To create responsive websites, we also integrate our HTML5 and PHP expertise. Our PHP team provides special consideration, and we consistently support it with knowledge exchange, employee training, and motivation.',
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
                  left: 15.0, top: 25.0, right: 15.0, bottom: 50.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text: 'Also, we offer Flutter App Development, ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'React Native App Development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ', AngularJS Development, ReactJS Development, PHP Web Development, Laravel Development, Node JS Development, Shopify Development, WordPress Development, and many more development services.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
