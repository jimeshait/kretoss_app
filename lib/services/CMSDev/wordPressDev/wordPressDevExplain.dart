import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class WordPressDevExplain extends StatelessWidget {
  WordPressDevExplain({super.key});

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
              padding:
                  const EdgeInsets.only(top: 55.0, left: 15.0, right: 15.0),
              child: Text(
                'Best WordPress Development Services Provider Company',
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
                  'WordPress is the most popular website platform and a robust content management system that helps businesses, professionals, and bloggers to create stunning websites. WordPress is a robust website management platform that allows for a lot of customization. Kretoss Technology is the #1 WordPress Website Development company with a vision of developing customized solutions that are secure and scalable.',
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
                  text: 'Kretoss Technology is the ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'Best WordPress Development Services Provider Company in USA',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ', and ',
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
                            ' that provides its services across the globe. We help businesses in achieving their goals. Kretoss Technology’s WordPress Web Developers focus on giving clients secure, profitable, and advanced online solutions, with the ability to insert required features and functionalities.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            //   child: Text(
            //       'It improves business by increasing efficiency and providing high functionality. Furthermore, Shopify development produces a functional and appealing eCommerce store that drives more targeted customers to the business website. With the help of Shopify development services, well-built eCommerce websites may improve and boost your business in every way.',
            //       textScaleFactor: 1.2,
            //       textAlign: TextAlign.justify,
            //       style: GoogleFonts.sourceSansPro(
            //         fontSize: 15,
            //         color: Color(0xff404040),
            //       )),
            // ),
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
            // Padding(
            //   padding:
            //       const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            //   child: RichText(
            //     textAlign: TextAlign.justify,
            //     textScaleFactor: 1.2,
            //     text: TextSpan(
            //       text: 'Using ',
            //       style: GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040)),
            //       children: const <TextSpan>[
            //         TextSpan(
            //             text: 'Shopify website development',
            //             style: GoogleFonts.sourceSansPro(
            //                 fontSize: 15,
            //                 color: Color(0xff404040),
            //                 fontWeight: FontWeight.bold)),
            //         TextSpan(
            //             text:
            //                 ', you may increase sales, provide a flawless user experience, and much more. Working on Shopify is simple for a beginner; but, for advanced and numerous features, you will need to hire Shopify developers.',
            //             style:
            //                 GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040))),
            //       ],
            //     ),
            //   ),
            // ),
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
                'What are the Benefits of WordPress Website Development Services?',
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
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'WordPress is a flexible, scalable, and customizable content management platform that serves a wide range of industries. We have a team of professional and certified WordPress web developers at ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Kretoss Technology',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' that has worked on a variety of projects. For our international clients, we’re developing innovative and sales-driven WordPress development.',
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
                  'We take advantage of WordPress’s capabilities to develop unique designs tailored to your company’s needs. Providing custom themes, plugins, and apps to help businesses develop faster. We provide services to small and large businesses, assisting them in clearing the way to digitalization and a technology-driven market.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5)),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            //   child: RichText(
            //     textAlign: TextAlign.justify,
            //     textScaleFactor: 1.2,
            //     text: TextSpan(
            //       text:
            //           'Our Shopify developers help you quickly set up and launch a successful Shopify eCommerce store by providing a variety of customizable features out of the box. Whether you have tens or hundreds of products, the ',
            //       style: GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040)),
            //       children: const <TextSpan>[
            //         TextSpan(
            //             text: 'CMS development',
            //             style: GoogleFonts.sourceSansPro(
            //                 fontSize: 15,
            //                 color: Color(0xff404040),
            //                 fontWeight: FontWeight.bold)),
            //         TextSpan(
            //             text:
            //                 ' will help you to organize them and increase conversions.',
            //             style:
            //                 GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040))),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 25.0, right: 15.0, bottom: 25.0),
              child: Text(
                'Reasons to Choose a WordPress Web Development for Your Business',
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
            //       'Shopify’s most exciting and noticeable feature, which leads to its success as a fully hosted platform, is its overall low maintenance cost, efficiency, and user-friendliness.',
            //       textScaleFactor: 1.2,
            //       textAlign: TextAlign.justify,
            //       style: GoogleFonts.sourceSansPro(
            //         fontSize: 15,
            //         color: Color(0xff404040),
            //       )),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 25.0, left: 15.0),
            //   child: Text(
            //     'The Following are Some of the Features:',
            //     style: GoogleFonts.sourceSansPro(fontSize: 15, fontWeight: FontWeight.bold),
            //   ),
            // ),
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
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.justify,
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
                'Make Kretoss Technology your company of Choice for WordPress Development Services',
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
                  'We provide professional WordPress design and development services. We provide each online project our full attention and deliver well-customized, SEO-savvy WordPress solutions by the specified deadlines.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    height: 1.5,
                    color: Color(0xff404040),
                  )),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            //   child: RichText(
            //     textAlign: TextAlign.justify,
            //     textScaleFactor: 1.2,
            //     text: TextSpan(
            //       text:
            //           'We have high expectations and make sure that our Shopify specialists in ',
            //       style: GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040)),
            //       children: const <TextSpan>[
            //         TextSpan(
            //             text: 'USA',
            //             style: GoogleFonts.sourceSansPro(
            //                 fontSize: 15,
            //                 color: Color(0xff404040),
            //                 fontWeight: FontWeight.bold)),
            //         TextSpan(
            //             text: ' and ',
            //             style:
            //                 GoogleFonts.sourceSansPro(fontSize: 15, color: Color(0xff404040))),
            //         TextSpan(
            //             text: 'India',
            //             style: GoogleFonts.sourceSansPro(
            //                 fontSize: 15,
            //                 color: Color(0xff404040),
            //                 fontWeight: FontWeight.bold)),
            //         TextSpan(
            //             text:
            //                 ' live up to them. As a result, we’ve established a team with advanced talents and vast Shopify CMS experience.',
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
                  'In order to create scalable and secure websites, our WordPress developers stick to clean and clear code standards. As a result, dedicated project managers help you with the efficient allocation of responsibility for your custom WordPress web development. You can choose a project-based approach or manage your projects on your own by hiring staff members using our dedicated resources model.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    height: 1.5,
                    fontSize: 15,
                    color: Color(0xff404040),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 25.0, right: 15.0, bottom: 50.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text:
                      'We also offer Flutter App Development, React Native App Development, AngularJS Development, ReactJS Development, PHP Web Development, ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15, color: Color(0xff404040), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Laravel Development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ', Node JS Development, Shopify Development, WordPress Development, and many more development services.',
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
