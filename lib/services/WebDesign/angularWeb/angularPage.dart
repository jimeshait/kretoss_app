import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/WebDesign/angularWeb/angularContent.dart';
import 'package:kretoss_webapp/services/WebDesign/angularWeb/angularExplain.dart';

import '../../../appbartop.dart';
import '../../../bottombar.dart';
import '../../../drawer/drawer.dart';
import '../../../estimate_project.dart';
import '../../MobileApp/freqque.dart';
import '../../MobileApp/question.dart';
import '../../MobileApp/service_path.dart';
import '../../MobileApp/talk.dart';
import '../../MobileApp/top.dart';
import '../skill.dart';

class AngularPage extends StatelessWidget {
  AngularPage({super.key});

  final question = [
    {
      'name': 'AngularJS Web Application Development',
    },
    {
      'name': 'AngularJS Enterprise Solutions',
    },
    {
      'name': 'Custom AngularJS Development',
    },
    {
      'name': 'AngularJS APIs Development',
    },
    {
      'name': 'AngularJS Portal Services',
    },
    {
      'name': 'Ecommerce Solutions with AngularJS',
    },
    {
      'name': 'AngularJS Interactive UI/UX Development',
    },
    {
      'name': 'AngularJS Dashboard Development',
    },
    {
      'name': 'Plugins Development in AngularJS',
    },
    {
      'name': 'AngularJS Integration Solutions',
    },
    {
      'name': 'AngularJS Migration Services',
    },
    {
      'name': 'Maintenance and Support for AngularJS',
    },
    {
      'name': 'AngularJS Consulting',
    },
    {
      'name': 'Cross-Platform Angularjs Web Development Solutions',
    },
  ];

  final question1 = [
    {
      'name': 'Our development provide excellent customer service',
    },
    {
      'name': 'Our team creates high-quality applications',
    },
    {
      'name': 'We help businesses increase their Return On Investment (ROI)',
    },
    {
      'name':
          'With straightforward code, our team creates the best applications',
    },
    {
      'name': 'Agile methodologies enable us to adapt iterative work cycles',
    },
    {
      'name': 'We make sure that apps run smoothly and are easy to use',
    },
  ];

  final top = [
    {'image': 'assets/images/truck.png', 'name': 'Logistics & Supply Chain'},
    {
      'image': 'assets/images/factory.png',
      'name': 'Manufacturing & Production'
    },
    {'image': 'assets/images/home-top.png', 'name': 'Property & Real Estate'},
    {'image': 'assets/images/worker.png', 'name': 'Engineering'},
    {
      'image': 'assets/images/health-insurance.png',
      'name': 'Health Care & Medicine'
    },
    {'image': 'assets/images/online-shopping.png', 'name': 'Ecommerce & B2B'},
    {'image': 'assets/images/tv.png', 'name': 'Media & Advertising'},
    {'image': 'assets/images/room-service.png', 'name': 'Hospitality'},
    {
      'image': 'assets/images/social-media.png',
      'name': 'Social Networking & Dating'
    },
    {'image': 'assets/images/mortarboard.png', 'name': 'Education & Tutoring'},
    {'image': 'assets/images/warming.png', 'name': 'Fitness & Beauty'},
    {'image': 'assets/images/flight.png', 'name': 'Travel & Transportation'},
  ];

  final freq = [
    {
      'que': '1. How much does it cost to develop AngularJS applications?',
      'ans':
          'We understand that estimating an AngularJS development services cost in advance is not always possible due to the unique features and requirements of each AngularJS project. As a result, we provide various pricing models that are tailored to your individual AngularJS development needs.',
      'expand': false
    },
    {
      'que': '2. How long will it take to develop an AngularJS project?',
      'ans':
          'Due to the scope and size of any project, it is hard to specify AngularJS development timelines. A custom AngularJS web development project might take anywhere from a few days to weeks, depending on the size and functionality you want on your website.',
      'expand': false
    },
    {
      'que': '3. Why is AngularJS so popular among businesses and developers?',
      'ans':
          'AngularJS web development services allow developers to create high-quality web apps and websites quickly and easily. Developers can use it to develop dynamic and custom web applications with exceptional functionality and features.',
      'expand': false
    },
    {
      'que':
          '4. Do you offer support and maintenance after the project is delivered?',
      'ans':
          'Kretoss understands the importance of after-sales support and maintenance, and therefore we include it in our AngularJS development services life cycles. As a result, we provide a variety of maintenance and support plans to suit your requirements.',
      'expand': false
    },
    {
      'que':
          '5. Will my website display properly on smartphones, tablets, and laptops?',
      'ans':
          'We develop responsive websites that provide the best possible user experience for visitors across a variety of devices and screen resolutions. Our talented and experienced developers carefully build a version of the site that is easy to navigate on any device.',
      'expand': false
    },
    {
      'que': '6. Is my project concept safe with your company?',
      'ans':
          'Before beginning any project, we sign a Non-Disclosure Agreement (NDA) to ensure complete data confidentiality.',
      'expand': false
    },
    {
      'que': '7. Do you offer customization options?',
      'ans':
          'Yes, we provide a website mock-up. We offer a few design alternatives based on your requirements and suggestions. Only when you’ve approved the design do we move forward with the development.',
      'expand': false
    },
    {
      'que': '8. Why Should You Hire Kretoss to Develop AngularJS?',
      'ans':
          'We are committed to providing outstanding business solutions and improving the customer experience for your business. We offer various methodologies, implement agile development processes, and have a highly skilled developer team to respond to your every development need, in addition to our on-time delivery.',
      'expand': false
    },
    {
      'que': '9. What applications can you develop with the Angular framework?',
      'ans':
          'AngularJS is used in online application development to develop single-page apps (SPA), progressive web apps (PWA), and mobile apps with immersive features that improve the customer experience and app performance. AngularJS web application development can also be utilized to develop high-performance applications that save time and money.\n\nAngularJS development can be used to develop a variety of applications.\n• Single Page Applications (SPA)\n• Server-Side Rendered (SSR) Applications\n• Industry-Specific Applications\n• Outstanding User Interfaces\n• Mobile Applications\n• Progressive Web Applications (PWA)',
      'expand': false
    },
    {
      'que': '10. Is there a difference between Angular and AngularJS?',
      'ans':
          'What’s the difference between Angular and AngularJS? The fact that AngularJS is based on JavaScript whereas Angular is based on TypeScript is a significant difference between the two frameworks. These two architectures share an open-source front-end platform for developing dynamic Single Page Applications (SPAs).',
      'expand': false
    },
  ];

  final skill = [
    {
      'name': 'Reliable Options',
      'content':
          'We put security ahead of everything else. Our angular applications are robust enough to sustain cross-site scripting attacks and HTTP-level vulnerabilities.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Features and Functions',
      'content':
          'Angular JS comes with a lot of features and functionality out of the box. This helps in achieving faster sales to the market.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Consistent User Experience',
      'content':
          'Our angular JS web development methodology enables us to create angular applications that are user-friendly and have a responsive UI design.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Reusable Components in Coding',
      'content':
          'Our developers are skilled at developing internal representations. This allows us to design custom libraries with the highest possible optimization.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Flexibility',
      'content':
          'Angular JS comes with ready-to-use components that let you expand your project. As a result, it is the greatest choice for business applications.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Support for several platforms',
      'content':
          'Various mobile-optimized UI tools can be used with Angular JS to create customized and cross-platform applications.',
      'image': 'assets/images/Mobile-features.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerMenu(),
      appBar: AppBarTop(
          child: SvgPicture.asset(
            'assets/svg/kretoss.svg',
            alignment: Alignment.centerLeft,
            height: 40,
            width: 40,
          ),
          preferredSize: Size.fromHeight(55)),
      floatingActionButton: FloatingBtn(),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffF4F7F9),
          child: Column(
            children: [
              ServicePath(
                  text1: 'Home',
                  text2: 'Services',
                  text3: 'AngularJS Development Services'),
              AngularContent(),
              AngularExplain(),
              Question(
                  question: question,
                  que: 'Our AngularJS Development Services'),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 55.0, right: 15.0),
                          child: Text(
                            'What Makes Angularjs Web Development the Best Choice For Your Business?',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 25.0, right: 15.0),
                        child: Text(
                            'Being the top custom angularjs development company means ensuring first in the services we provide to all those that outsource angularjs web development to us.',
                            textScaleFactor: 1.2,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.sourceSansPro(
                                height: 1.5,
                                fontSize: 15,
                                color: Color(0xff404040))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 25.0, right: 15.0),
                        child: Text(
                            'Here’s how angularjs web development services can meet all of your business requirements:',
                            textScaleFactor: 1.2,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.sourceSansPro(
                                height: 1.5,
                                fontSize: 15,
                                color: Color(0xff404040))),
                      ),
                    ],
                  )),
              Skill(
                skill: skill,
              ),
              Container(
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 30.0, top: 0),
                    child: Image.asset(
                      'assets/images/web.jpg',
                    ),
                  ),
                ),
              ),
              Question(
                  question: question1,
                  que:
                      'Why Should You Choose Kretoss Technology for AngularJS Web Development?'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our AngularJS Development Services',
                text2:
                    'Kretoss Technology has developed AngularJS Mobile and Web Apps for various market industries including finance, medical health & fitness, and many more. We also have an expert AngularJS Development Services team that is working on cutting-edge technologies and tools.',
                top: top,
              ),
              FreqQue(
                freq: freq,
              ),
              EstimateProject(),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
