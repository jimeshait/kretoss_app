// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/services/CMSDev/shopifyDev/shopifyDevPage.dart';
import 'package:kretoss_webapp/services/CMSDev/wordPressDev/wordPressDevPage.dart';
import 'package:kretoss_webapp/services/MobileApp/MobilePage.dart';
import 'package:kretoss_webapp/services/MobileApp/iosApp/iosPage.dart';
import 'package:kretoss_webapp/services/MobileApp/reactnativeApp/reactNativePage.dart';
import 'package:kretoss_webapp/services/WebDesign/WebPage.dart';
import 'package:kretoss_webapp/services/WebDesign/angularWeb/angularPage.dart';
import 'package:kretoss_webapp/services/WebDesign/reactJSWeb/reactJSPage.dart';
import 'package:kretoss_webapp/services/WebDesign/responsiveWeb/responsivePage.dart';
import 'package:kretoss_webapp/services/Website%20Development/WebsiteDevPage.dart';
import 'dart:typed_data';

import 'package:kretoss_webapp/services/Website%20Development/phpWeb/phpPage.dart';

import 'services/CMSDev/cmspage.dart';
import 'services/MobileApp/flutterApp/flutterPage.dart';
import 'services/Website Development/laravelWeb/laravelPage.dart';
import 'services/Website Development/nodeJSWeb/nodeJSPage.dart';

class Work extends StatelessWidget {
  Work({Key? key}) : super(key: key);

  List works = [
    {
      'title': 'Website Development',
      'navigate': WebsiteDevPage(),
      'data': [
        {
          'image': 'assets/svg/service/php.svg',
          'name': 'PHP Web Development',
          'navigate': PhpPage(),
        },
        {
          'image': 'assets/svg/service/laravel.svg',
          'name': 'Laravel Development',
          'navigate': LaravelPage(),
        },
        {
          'image': 'assets/svg/service/node-js.svg',
          'name': 'Node JS Development',
          'navigate': NodeJSPage(),
        },
        {
          'image': 'assets/svg/service/codeigniter.svg',
          'name': 'Codeigniter',
        },
      ],
    },
    {
      'title': 'Mobile App Development',
      'navigate': MobilePage(),
      'data': [
        {
          'image': 'assets/svg/service/apple.svg',
          'name': 'iOS(iphone) App Development',
          'navigate': iOSPage(),
        },
        {
          'image': 'assets/svg/service/flutter.svg',
          'name': 'Flutter App Development',
          'navigate': FlutterPage(),
        },
        {
          'image': 'assets/svg/service/react-native.svg',
          'name': 'React Native App Development',
          'navigate': ReactNativePage(),
        },
        {
          'image': 'assets/svg/service/swift.svg',
          'name': 'swift',
        },
      ]
    },
    {
      'title': 'Web Design',
      'navigate': WebPage(),
      'data': [
        {
          'image': 'assets/svg/service/responsive-web.svg',
          'name': 'Responsive Website Design',
          'navigate': ResponsivePage(),
        },
        {
          'image': 'assets/svg/service/angular.svg',
          'name': 'AngularJS Development',
          'navigate': AngularPage(),
        },
        {
          'image': 'assets/svg/service/react-native.svg',
          'name': 'React JS Development',
          'navigate': ReactJSPage(),
        },
        {
          'image': 'assets/svg/service/bootstarp.svg',
          'name': 'Bootstrap',
        },
      ]
    },
    {
      'title': 'CMS & Ecommerce Development',
      'navigate': CMSPage(),
      'data': [
        {
          'image': 'assets/svg/service/shopify.svg',
          'name': 'Shopify Development',
          'navigate': ShopifyDevPage(),
        },
        {
          'image': 'assets/svg/service/wordpress.svg',
          'name': 'WordPress Development',
          'navigate': WordPressDevPage(),
        },
        {
          'image': 'assets/svg/service/magento.svg',
          'name': 'Magento',
        },
        {
          'image': 'assets/svg/service/open-cart.svg',
          'name': 'Opencart',
        },
        {
          'image': 'assets/svg/service/custom-develop.svg',
          'name': 'Custom Development',
        },
      ]
    },
    {
      'title': 'Payment & Shipping API Integration Solutions',
      'data': [
        {
          'image': 'assets/svg/service/amazon.svg',
          'name': 'Amazon',
        },
        {
          'image': 'assets/svg/service/google.svg',
          'name': 'Google Pay',
        },
        {
          'image': 'assets/svg/service/paypal.svg',
          'name': 'Paypal',
        },
        {
          'image': 'assets/svg/service/woocommerce.svg',
          'name': 'Woocommerce',
        },
        {'image': 'assets/images/eBay.png', 'name': 'eBay', 'pngcheck': true}
      ]
    },
    {
      'title': 'Digital Marketing',
      'data': [
        {
          'image': 'assets/svg/service/seo.svg',
          'name': 'Search Engine Optimization - SEO',
        },
        {
          'image': 'assets/svg/service/ppc.svg',
          'name': 'Pay Per Click - PPC Management',
        },
        {
          'image': 'assets/svg/service/social-media.svg',
          'name': 'Social Media Marketing',
        },
        {
          'image': 'assets/svg/service/content.svg',
          'name': 'Content Writing',
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: works.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(
                    bottom: 20.0, left: 10.0, right: 10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  elevation: 5,
                  color: Color(0xFF27272e),
                  child: Container(
                    //width: 500,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 22.0, top: 22.0, right: 22.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 22.0),
                            child: Text(
                              works[index]['title'],
                              style: GoogleFonts.sourceSansPro(
                                  height: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          for (int i = 0; i < works[index]['data'].length; i++)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: InkWell(
                                onTap: () {
                                  if (works[index]['data'][i]['navigate'] !=
                                      null)
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => works[index]
                                              ['data'][i]['navigate']),
                                    );
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: (works[index]['data'][i]
                                                  ['pngcheck'] ==
                                              true)
                                          ? Image.asset(
                                              works[index]['data'][i]['image'],
                                              fit: BoxFit.cover,
                                            )
                                          : SvgPicture.asset(
                                              //Image.network(
                                              works[index]['data'][i]['image'],
                                              fit: BoxFit.cover,
                                            ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        works[index]['data'][i]['name'],
                                        style: GoogleFonts.sourceSansPro(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          //for
                          //else
                          Padding(
                            padding: const EdgeInsets.only(bottom: 22.0),
                            child: InkWell(
                              onTap: () {
                                if (works[index]['navigate'] != null)
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            works[index]['navigate']),
                                  );
                              },
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Divider(
                                        color: Color(0xffFAB8C4),
                                        thickness: 1,
                                        indent: 3,
                                        //endIndent: 100,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 150.0),
                                    child: Text(
                                      'Find Out More',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.sourceSansPro(
                                          color: Color(0xffFAB8C4)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
