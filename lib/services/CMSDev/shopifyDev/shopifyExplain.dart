import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopifyExplain extends StatelessWidget {
  ShopifyExplain({super.key});

  List shopify = [
    {'name': 'A Fully Hosted eCommerce Platform\n'},
    {'name': 'Payment Gateways are supported in a variety of ways\n'},
    {'name': 'Easy-to-Use Customer Management System\n'},
    {'name': 'Possibility of Making Use of Online Coupons.\n'},
    {'name': 'Extension Plug-ins Can Be Used\n'},
    {'name': 'Product Catalog Management is Simple\n'},
    {'name': 'Using a Mobile App to Manage Your Store\n'},
    {'name': 'Extremely secure and safe'},
  ];

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
                'Get a Robust eCommerce Store with Shopify Development',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
              child: Text(
                'Get Effortless, Economical, and Effective Ecommerce Shopify Development Services from Kretoss Technology',
                textScaleFactor: 1.2,
                textAlign: TextAlign.justify,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930),
                    height: 1.5),
              ),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            //   child: Text(
            //       'Customers who require top-notch structures and want their website to look more professional may consider custom website development services.',
            //       textScaleFactor: 1.2,
            //       textAlign: TextAlign.justify,
            //       style: GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040))),
            // ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'Shopify Development is a popular and leading eCommerce solution that helps eCommerce businesses in expanding their business. Shopify is an eCommerce platform with a number of useful features and cutting-edge technologies. With ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Shopify Development Services',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ', a company can improve its optimization, sales, and marketing in order to improve its overall e-commerce experience.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'It improves business by increasing efficiency and providing high functionality. Furthermore, Shopify development produces a functional and appealing eCommerce store that drives more targeted customers to the business website. With the help of Shopify development services, well-built eCommerce websites may improve and boost your business in every way.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5)),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            //   child: Text(
            //       'We provide high-quality Custom Website Development Services at affordable prices. What makes us apart from other CMS development companies in USA and India is that we never take shortcuts on quality. We may make arrangements that tailor to your specific needs and budget.',
            //       textScaleFactor: 1.2,
            //       textAlign: TextAlign.justify,
            //       style: GoogleFonts.sourceSansPro(
            //         fontSize: 15,
            //         color: Color(0xff404040),
            //       )),
            // ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text: 'Using ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Shopify website development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ', you may increase sales, provide a flawless user experience, and much more. Working on Shopify is simple for a beginner; but, for advanced and numerous features, you will need to hire Shopify developers.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            //   child: RichText(
            //     textAlign: TextAlign.justify,
            //     textScaleFactor: 1.2,
            //     text: TextSpan(
            //       text: 'We also offer ',
            //       style: GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040)),
            //       children: const <TextSpan>[
            //         TextSpan(
            //             text: 'Flutter Cross Platform App Development',
            //             style: GoogleFonts.sourceSansPro(
            //                 fontSize: 15,
            //                 color: Color(0xff0d6efd),
            //                 fontWeight: FontWeight.bold)),
            //         TextSpan(
            //             text: ', React Native App Development, ',
            //             style:
            //                 GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040))),
            //         TextSpan(
            //             text: 'AngularJS Web Development Services',
            //             style: GoogleFonts.sourceSansPro(
            //                 fontSize: 15,
            //                 color: Color(0xff0d6efd),
            //                 fontWeight: FontWeight.bold)),
            //         TextSpan(
            //             text:
            //                 ', ReactJS Development, PHP Web Development, Laravel Development, Node JS Development, Shopify Development, WordPress Development, and many more development services.',
            //             style:
            //                 GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040))),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                'Top Shopify Development Company',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930),
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
                  text: 'Are you looking for a ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Shopify Development Company',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' that can help you in optimizing and improving your eCommerce sales? You’re at the right place. Kretoss Technology is a Shopify Partner dedicated to helping eCommerce businesses with next-generation, completely customizable, scalable, prospective, and conversion-focused Shopify stores.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'It’s easier than it sounds to develop an eCommerce store right away without any technical knowledge. With the ready-to-sell Shopify and Shopify Plus systems, however, this is possible.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    height: 1.5,
                    color: Color(0xff404040),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'Our Shopify developers help you quickly set up and launch a successful Shopify eCommerce store by providing a variety of customizable features out of the box. Whether you have tens or hundreds of products, the ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'CMS development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' will help you to organize them and increase conversions.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                'Investing in a Shopify Development Store Has Its Own Set of Advantages',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'Shopify’s most exciting and noticeable feature, which leads to its success as a fully hosted platform, is its overall low maintenance cost, efficiency, and user-friendliness.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 25.0, left: 15.0, right: 15.0, bottom: 25.0),
              child: Text(
                'The Following are Some of the Features:',
                textScaleFactor: 1.2,
                textAlign: TextAlign.justify,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Color(0xff292930)),
              ),
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: shopify.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\u2022',
                        style: GoogleFonts.sourceSansPro(fontSize: 20),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          shopify[index]['name'],
                          textAlign: TextAlign.justify,
                          textScaleFactor: 1.2,
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 15, color: Color(0xff404040)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                'We Provide Customized Shopify Development Services to Help you Increase your eCommerce Sales',
                textScaleFactor: 1.2,
                textAlign: TextAlign.justify,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'We have a mindset that focuses on increasing sales for our clients right from the start. As a result, we help them in exploring new opportunities using the Shopify as well as Shopify Plus eCommerce platforms.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'We have high expectations and make sure that our Shopify specialists in ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'USA',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ' and ',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                    TextSpan(
                        text: 'India',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' live up to them. As a result, we’ve established a team with advanced talents and vast Shopify CMS experience.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 25.0, right: 15.0, bottom: 50.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text: 'We also offer Flutter App Development, ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'React Native App Development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ', AngularJS Development, ReactJS Development, PHP Web Development, Laravel Development, Node JS Development, Shopify Development, ',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                    TextSpan(
                        text: 'WordPress Development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ' , and many more development services.',
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
