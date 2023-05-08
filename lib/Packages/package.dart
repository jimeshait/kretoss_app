import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/Packages/order2.dart';
import 'package:kretoss_webapp/Packages/order3.dart';
import 'package:kretoss_webapp/chat.dart';
import 'package:readmore/readmore.dart';
import '../bottombar.dart';
import '../estimate_project.dart';
import 'order.dart';
import 'order1.dart';

class Package extends StatefulWidget {
  const Package({super.key});

  @override
  State<Package> createState() => _PackageState();
}

class _PackageState extends State<Package> with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 4, vsync: this);
  List package = [
    {
      'price': '\$79',
      'type': 'Basic',
      'desc':
          'Ideal for companies & super- startups or need to revamp their brand.',
      'desc1': [
        'Homepage(Landing page) Design',
        'PSD/ XD/ Figma',
        'Responsive Design',
        'Source Files',
        '1 Page',
        '3 Revisions',
        '2 Days Delivery Time'
      ],
    },
    {
      'price': '\$139',
      'type': 'Standard',
      'desc':
          'A good fit for organizations and mid-level startups, as well as established companies looking to rebrand themselves.',
      'desc1': [
        'Homepage + 3 Pages Design',
        'PSD/ XD/ Figma',
        'Responsive Design',
        'Source Files',
        '4 Page',
        '6 Revisions',
        '3 Days Delivery Time'
      ],
    },
    {
      'price': '\$249',
      'type': 'Premium',
      'desc':
          'Well-suited for both potential superstartups and esta blished companies looking to revamp their brand.',
      'desc1': [
        'Homepage + 5 Pages Design',
        'PSD/ XD/ Figma',
        'Responsive Design',
        'Source Files',
        '6 Page',
        'Unlimited Revisions',
        '5 Days Delivery Time'
      ],
    },
  ];
  List package1 = [
    {
      'price': '\$250',
      'type': 'Wordpress',
      'desc1': [
        '5 to 7 pages simple website',
        'Image & content upload',
        'Simple functional',
        'Responsive Design',
        'Design customise',
        'For E commerce + \$200',
        '8 Revisions',
        '3 Days Delivery Time'
      ],
    },
    {
      'price': '\$499',
      'type': 'Shopify',
      'desc1': [
        '5 to 7 pages eCommerce website',
        'Products & Content upload',
        'Ecommerce features',
        'Responsive Design',
        'Payment integration',
        'Design customize',
        '8 Revisions',
        '5 Days Delivery Time'
      ],
    },
    {
      'price': '\$599',
      'type': 'Magento',
      'desc1': [
        '5 pages eCommerce website',
        'Products & Content upload',
        'Ecommerce features',
        'Responsive Design',
        'Payment integration',
        'Design customize',
        '8 Revisions',
        '8 Days Delivery Time'
      ],
    },
    {
      'price': '\$17/hr',
      'type': 'Laravel',
      'desc1': [
        'Custom Design & Development',
        'Image & content upload',
        'functional website',
        'Responsive Design',
        'Design customise',
        'Admin penal Development',
        'Mobile responsive',
        '1 month free support',
        'Delivery Based on requirement'
      ],
    },
    {
      'price': '\$20/hr',
      'type': 'Node.Js',
      'desc1': [
        'Custom Design & Development',
        'Image & content upload',
        'functional website',
        'Responsive Design',
        'Design customise',
        'Admin penal Development',
        'Mobile responsive',
        '1 month free support',
        'Delivery Based on requirement'
      ],
    },
    {
      'price': '\$18/hr',
      'type': 'React.Js',
      'desc1': [
        'Custom Design & Development',
        'Image & content upload',
        '100% Accurate design',
        'Responsive Design',
        'Design customise',
        'Custom component',
        'Convert Figma/XD/PSD to React',
        '1 month free support',
        'Delivery Based on requirement'
      ],
    },
    {
      'price': '\$20/hr',
      'type': 'Python',
      'desc1': [
        'Custom Design & Development',
        'Image & content upload',
        'functional website',
        'Responsive Design',
        'Design customise',
        'Admin penal Development',
        'Mobile responsive',
        '1 month free support',
        'Delivery Based on requirement'
      ],
    },
    {
      'price': '\$20/hr',
      'type': '.NET',
      'desc1': [
        'Custom Design & Development',
        'Image & content upload',
        'functional website',
        'Responsive Design',
        'Design customise',
        'Admin penal Development',
        'Mobile responsive',
        '1 month free support',
        'Delivery Based on requirement'
      ],
    },
    {
      'price': '\$18/hr',
      'type': 'Angular',
      'desc1': [
        'Custom Design & Development',
        'Image & content upload',
        '100% Accurate design',
        'Responsive Design',
        'Design customise',
        'Custom component',
        'Convert Figma/XD/PSD to React',
        '1 month free support',
        'Delivery Based on requirement'
      ],
    },
    {
      'price': '\$20/hr',
      'type': 'Vue.js',
      'desc1': [
        'Custom Design & Development',
        'Image & content upload',
        '100% Accurate design',
        'Responsive Design',
        'Design customise',
        'Custom component',
        'Convert Figma/XD/PSD to React',
        '1 month free support',
        'Delivery Based on requirement'
      ],
    },
  ];
  List package2 = [
    {
      'price': '\$99',
      'type': 'Basic',
      'desc':
          'Ideal for companies & super- startups or need to revamp their brand.',
      'desc1': [
        '5 Screens',
        'PSD/ XD/ Figma',
        'Image Format - JPG',
        'Source Files',
        'Elements - Fonts & Assets',
        '3 Revisions',
        'Prototype',
        '2 Days Delivery Time'
      ],
    },
    {
      'price': '\$199',
      'type': 'Standard',
      'desc':
          'Ideal for companies & super- startups or need to revamp their brand.',
      'desc1': [
        '8 Screens',
        'PSD/ XD/ Figma',
        'Image Format - JPG',
        'Source Files',
        'Elements - Fonts & Assets',
        'Unlimited',
        'Prototype',
        '4 Days Delivery Time'
      ],
    },
    {
      'price': '\$299',
      'type': 'Premium',
      'desc':
          'Ideal for companies & super- startups or need to revamp their brand.',
      'desc1': [
        '14 Screens',
        'PSD/ XD/ Figma',
        'Image Format - JPG',
        'Source Files',
        'Elements - Fonts & Assets',
        '3 Revisions',
        'Prototype',
        '6 Days Delivery Time'
      ],
    },
  ];
  List package3 = [
    {
      'price': '\$399',
      'type': 'Android Basic',
      'desc': 'You will get only Android app which one build Native Android',
      'desc1': [
        '5 Screens functional app',
        'Convert design PSD/ XD/ Figma to Android',
        '5 Backend API integration',
        'Neat & Clean development',
        'Responsive for all Android Device',
        'Deliver Source file',
        '3 Revisions',
        '4 Days Delivery Time',
        'Submit on Play-store'
      ],
    },
    {
      'price': '\$699',
      'type': 'Android Standard',
      'desc': 'You will get only Android app which one build Native Android',
      'desc1': [
        '10 Screens functional app',
        'Convert design PSD/ XD/ Figma to Android',
        '10 Backend API integration',
        'Neat & Clean development',
        'Responsive for all Android Device',
        'Deliver Source file',
        '5 Revisions',
        '8 Days Delivery Time',
        'Submit on Play-store'
      ],
    },
    {
      'price': '\$999',
      'type': 'Android Premium',
      'desc': 'You will get only Android app which one build Native Android',
      'desc1': [
        '15 Screens',
        'Convert design PSD/ XD/ Figma to Android',
        '15 Backend API integration',
        'Neat & Clean development',
        'Responsive for all Android Device',
        'Deliver Source file',
        'Unlimited Revisions',
        '15 Days Delivery Time',
        'Submit on Play-store'
      ],
    },
    {
      'price': '\$399',
      'type': 'iOS App Basic',
      'desc': 'You will get only iOS app which one build Swift iOS',
      'desc1': [
        '4 Screens functional app',
        'Convert design PSD/ XD/ Figma to iOS',
        '4 Backend API integration',
        'Neat & Clean development',
        'Responsive for all iOS Device',
        'Deliver Source file',
        '3 Revisions',
        '4 Days Delivery Time',
        'Submit on App Store'
      ],
    },
    {
      'price': '\$699',
      'type': 'iOS App Standard',
      'desc': 'You will get only iOS app which one build Swift iOS',
      'desc1': [
        '8 Screens functional app',
        'Convert design PSD/ XD/ Figma to iOS',
        '8 Backend API integration',
        'Neat & Clean development',
        'Responsive for all iOS Device',
        'Deliver Source file',
        '5 Revisions',
        '8 Days Delivery Time',
        'Submit on App Store'
      ],
    },
    {
      'price': '\$999',
      'type': 'iOS App Premium',
      'desc': 'You will get only iOS app which one build Swift iOS',
      'desc1': [
        '12 Screens',
        'Convert design PSD/ XD/ Figma to iOS',
        '12 Backend API integration',
        'Neat & Clean development',
        'Responsive for all iOS Device',
        'Deliver Source file',
        'Unlimited Revisions',
        '15 Days Delivery Time',
        'Submit on App Store'
      ],
    },
    {
      'price': '\$499',
      'type': 'Reactnative Basic',
      'desc':
          'You will get Android & iOS both app which one build in Reactnative',
      'desc1': [
        '5 Screens functional app',
        'Convert design PSD/ XD/ Figma in Both',
        '5 Backend API integration',
        'Neat & Clean development',
        'Responsive for all iOS Device',
        'Deliver Source file',
        '3 Revisions',
        '4 Days Delivery Time',
        'Submit on Play-store & App Store'
      ],
    },
    {
      'price': '\$799',
      'type': 'Reactnative Standard',
      'desc':
          'You will get Android & iOS both app which one build in Reactnative',
      'desc1': [
        '8 Screens functional app',
        'Convert design PSD/ XD/ Figma in Both',
        '8 Backend API integration',
        'Neat & Clean development',
        'Responsive for all iOS Device',
        'Deliver Source file',
        '5 Revisions',
        '8 Days Delivery Time',
        'Submit on Play-store & App Store'
      ],
    },
    {
      'price': '\$999',
      'type': 'Reactnative Premium',
      'desc':
          'You will get Android & iOS both app which one build in Reactnative',
      'desc1': [
        '12 Screens',
        'Convert design PSD/ XD/ Figma in Both',
        '12 Backend API integration',
        'Neat & Clean development',
        'Responsive for all iOS Device',
        'Deliver Source file',
        'Unlimited Revisions',
        '15 Days Delivery Time',
        'Submit on Play-store & App Store'
      ],
    },
    {
      'price': '\$499',
      'type': 'Flutter App Basic',
      'desc': 'You will get Android & iOS both app which one build in Flutter',
      'desc1': [
        '5 Screens functional app',
        'Convert design PSD/ XD/ Figma in Both',
        '5 Backend API integration',
        'Neat & Clean development',
        'Responsive for all iOS Device',
        'Deliver Source file',
        '3 Revisions',
        '4 Days Delivery Time',
        'Submit on Play-store & App Store'
      ],
    },
    {
      'price': '\$799',
      'type': 'Flutter App Standard',
      'desc': 'You will get Android & iOS both app which one build in Flutter',
      'desc1': [
        '8 Screens functional app',
        'Convert design PSD/ XD/ Figma in Both',
        '8 Backend API integration',
        'Neat & Clean development',
        'Responsive for all iOS Device',
        'Deliver Source file',
        '5 Revisions',
        '8 Days Delivery Time',
        'Submit on Play-store & App Store'
      ],
    },
    {
      'price': '\$999',
      'type': 'Flutter App Basic',
      'desc': 'You will get Android & iOS both app which one build in Flutter',
      'desc1': [
        '12 Screens',
        'Convert design PSD/ XD/ Figma in Both',
        '12 Backend API integration',
        'Neat & Clean development',
        'Responsive for all iOS Device',
        'Deliver Source file',
        'Unlimited Revisions',
        '15 Days Delivery Time',
        'Submit on Play-store & App Store'
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 50, bottom: 15),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: TabBar(
                controller: tabController,
                indicator: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Color(0xff4169e1), width: 5)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(89, 95, 247, 94),
                      Color.fromRGBO(89, 95, 247, 229),
                    ])),
                unselectedLabelColor: Color(0xff4169e1),
                labelColor: Color(0xff404040),
                labelPadding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 15, right: 15.0),
                isScrollable: true,
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  const Text(
                    'WEB DESIGN',
                  ),
                  const Center(
                    child: Text(
                      'WEB DEVELOPMENT',
                      //style: GoogleFonts.sourceSansPro(color: Colors.black)
                    ),
                  ),
                  const Text(
                    'MOBILE APP DESIGN',
                    //style: GoogleFonts.sourceSansPro(color: Colors.black)
                  ),
                  const Text(
                    'MOBILE APP DEVELOPMENT',
                    //style: GoogleFonts.sourceSansPro(color: Colors.black)
                  )
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 15, right: 15),
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 500,
            width: 500,
            child: TabBarView(
                controller: tabController,
                physics: AlwaysScrollableScrollPhysics(),
                dragStartBehavior: DragStartBehavior.down,
                children: [
                  ListView.builder(
                    itemCount: package.length,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          // width: 500,
                          // height: 620,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  color: const Color(0xff5d59ea), width: 2)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Center(
                                    child: Text(
                                  package[index]['price'],
                                  style: GoogleFonts.sourceSansPro(
                                      color: Color(0xff5d59ea),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Center(
                                    child: Text(
                                  package[index]['type'],
                                  textScaleFactor: 1.2,
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000)),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0, bottom: 10.0),
                                child: ReadMoreText(
                                  package[index]['desc'],
                                  textScaleFactor: 1.2,
                                  textAlign: TextAlign.center,
                                  colorClickableText: Color(0xff5956e9),
                                  trimCollapsedText: 'Read More',
                                  trimExpandedText: ' Read Less',
                                  trimLines: 2,
                                  trimMode: TrimMode.Line,
                                  style: GoogleFonts.sourceSansPro(
                                    color: Color(0xff404040),
                                    height: 1.5,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              const Divider(
                                indent: 15,
                                endIndent: 15,
                              ),
                              for (int i = 0;
                                  i < package[index]['desc1'].length;
                                  i++)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0,
                                      right: 15,
                                      top: 10.0,
                                      bottom: 10.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.check_circle_outline,
                                        size: 21,
                                        color: Color(0xff5d59ea),
                                      ),
                                      Expanded(
                                        child: Text(
                                          package[index]['desc1'][i],
                                          textScaleFactor: 1.2,
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.sourceSansPro(
                                              color: Color(0xff404040),
                                              fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 15, bottom: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                              width: 1.9,
                                              color: Color(0xff5d59ea),
                                            ),
                                            //padding: const EdgeInsets.symmetric(
                                            //horizontal: 45),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Order(
                                                          package: package,
                                                          index: index,
                                                        )));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text('Order Now',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        color: Colors.black)),
                                          )),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff5d59ea),
                                            //padding: const EdgeInsets.symmetric(
                                            //horizontal: 50),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Chat()));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text('Live Chat',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        color: Colors.white)),
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: package1.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          // width: 500,
                          // height: 620,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  color: const Color(0xff5d59ea), width: 2)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Center(
                                    child: Text(
                                  package1[index]['price'],
                                  style: GoogleFonts.sourceSansPro(
                                      color: Color(0xff5d59ea),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Center(
                                    child: Text(
                                  package1[index]['type'],
                                  textScaleFactor: 1.2,
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000)),
                                )),
                              ),
                              const Divider(
                                indent: 15,
                                endIndent: 15,
                              ),
                              for (int i = 0;
                                  i < package1[index]['desc1'].length;
                                  i++)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0,
                                      right: 15,
                                      top: 10.0,
                                      bottom: 10.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.check_circle_outline,
                                        size: 21,
                                        color: Color(0xff5d59ea),
                                      ),
                                      Expanded(
                                        child: Text(
                                          package1[index]['desc1'][i],
                                          textScaleFactor: 1.2,
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.sourceSansPro(
                                              color: Color(0xff404040),
                                              fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 15, bottom: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                              width: 1.9,
                                              color: Color(0xff5d59ea),
                                            ),
                                            //padding: const EdgeInsets.symmetric(
                                            //horizontal: 45),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Order1(
                                                          package: package1,
                                                          index: index,
                                                        )));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text('Order Now',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        color: Colors.black)),
                                          )),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff5d59ea),
                                            //padding: const EdgeInsets.symmetric(
                                            //horizontal: 50),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Chat()));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text('Live Chat',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        color: Colors.white)),
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: package2.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          // width: 500,
                          // height: 620,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  color: const Color(0xff5d59ea), width: 2)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Center(
                                    child: Text(
                                  package2[index]['price'],
                                  style: GoogleFonts.sourceSansPro(
                                      color: Color(0xff5d59ea),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Center(
                                    child: Text(
                                  package2[index]['type'],
                                  textScaleFactor: 1.2,
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000)),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0, bottom: 10.0),
                                child: ReadMoreText(
                                  package2[index]['desc'],
                                  colorClickableText: Color(0xff5956e9),
                                  textScaleFactor: 1.2,
                                  textAlign: TextAlign.center,
                                  trimCollapsedText: 'Read More',
                                  trimExpandedText: ' Read Less',
                                  trimLines: 2,
                                  trimMode: TrimMode.Line,
                                  style: GoogleFonts.sourceSansPro(
                                    color: Color(0xff404040),
                                    height: 1.5,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              const Divider(
                                indent: 15,
                                endIndent: 15,
                              ),
                              for (int i = 0;
                                  i < package[index]['desc1'].length;
                                  i++)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0,
                                      right: 15,
                                      top: 10.0,
                                      bottom: 10.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.check_circle_outline,
                                        size: 21,
                                        color: Color(0xff5d59ea),
                                      ),
                                      Expanded(
                                        child: Text(
                                          package2[index]['desc1'][i],
                                          textScaleFactor: 1.2,
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.sourceSansPro(
                                              color: Color(0xff404040),
                                              fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 15, bottom: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                              width: 1.9,
                                              color: Color(0xff5d59ea),
                                            ),
                                            //padding: const EdgeInsets.symmetric(
                                            //horizontal: 45),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Order2(
                                                          package: package2,
                                                          index: index,
                                                        )));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text('Order Now',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        color: Colors.black)),
                                          )),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff5d59ea),
                                            //padding: const EdgeInsets.symmetric(
                                            //horizontal: 50),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Chat()));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text('Live Chat',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        color: Colors.white)),
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: package3.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          // width: 500,
                          // height: 620,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  color: const Color(0xff5d59ea), width: 2)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Center(
                                    child: Text(
                                  package3[index]['price'],
                                  style: GoogleFonts.sourceSansPro(
                                      color: Color(0xff5d59ea),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Center(
                                    child: Text(
                                  package3[index]['type'],
                                  textScaleFactor: 1.2,
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000)),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0, bottom: 10.0),
                                child: ReadMoreText(
                                  package3[index]['desc'],
                                  colorClickableText: Color(0xff5956e9),
                                  textScaleFactor: 1.2,
                                  textAlign: TextAlign.center,
                                  trimCollapsedText: 'Read More',
                                  trimExpandedText: ' Read Less',
                                  trimLines: 2,
                                  trimMode: TrimMode.Line,
                                  style: GoogleFonts.sourceSansPro(
                                    color: Color(0xff404040),
                                    height: 1.5,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              const Divider(
                                indent: 15,
                                endIndent: 15,
                              ),
                              for (int i = 0;
                                  i < package3[index]['desc1'].length;
                                  i++)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0,
                                      right: 15,
                                      top: 10.0,
                                      bottom: 10.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.check_circle_outline,
                                        size: 21,
                                        color: Color(0xff5d59ea),
                                      ),
                                      Expanded(
                                        child: Text(
                                          package3[index]['desc1'][i],
                                          textScaleFactor: 1.2,
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.sourceSansPro(
                                              color: Color(0xff404040),
                                              fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 15, bottom: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                              width: 1.9,
                                              color: Color(0xff5d59ea),
                                            ),
                                            //padding: const EdgeInsets.symmetric(
                                            //horizontal: 45),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Order3(
                                                          package: package3,
                                                          index: index,
                                                        )));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text('Order Now',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        color: Colors.black)),
                                          )),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff5d59ea),
                                            //padding: const EdgeInsets.symmetric(
                                            //horizontal: 50),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Chat()));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text('Live Chat',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        color: Colors.white)),
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}
