import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/floationbtn.dart';

import '../../../appbartop.dart';
import '../../../bottombar.dart';
import '../../../drawer/drawer.dart';
import '../../../estimate_project.dart';
import '../../WebDesign/skill.dart';
import '../freqque.dart';
import '../question.dart';
import '../service_path.dart';
import '../talk.dart';
import '../top.dart';
import 'flutterContent.dart';
import 'flutterExplain.dart';

class FlutterPage extends StatelessWidget {
  FlutterPage({super.key});

  final question = [
    {
      'name': 'Highly Skilled and Experienced Developers',
    },
    {
      'name': 'Proven Experience',
    },
    {
      'name': 'Always We Hire Dedicated Developers',
    },
    {
      'name': 'Background in Native Development',
    },
    {
      'name': 'Deployment with Tests',
    },
    {
      'name': 'Animation Flutter',
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
      'que': '1. Why Should I Hire Your Flutter App Development Company?',
      'ans':
          'Kretoss Technology is a well-known name in the global Flutter App Development team, with more than 7 years of experience in Flutter App Development. Flutter developers, QA Analysts, testers, and project managers make up the team.\n\nWe’ve served customers in more than 15 countries and have a 98.7% customer satisfaction rating. To acquire top-notch Flutter app development solutions, use our Flutter app development services.',
      'expand': false
    },
    {
      'que': '2. How Much Time Does It Take To Create A Flutter App?',
      'ans':
          'Multiple factors contribute to the establishment of a Flutter application, including design complexity, development platforms, functionality and features, developer experience, testing, and project scale.',
      'expand': false
    },
    {
      'que': '3. How Much Does Flutter Application Development Cost?',
      'ans':
          'The cost of Flutter App Development Services is determined by things like the development platform, app categories, the developer’s region of origin, app complexity, and the number of features you require in testing.',
      'expand': false
    },
    {
      'que': '4. Is it possible to convert my current app to Flutter?',
      'ans':
          'Yes, this is a definite possibility. You can migrate your existing application to modern Flutter technology with the help of our expert and experienced Flutter app developers to create seamless applications.',
      'expand': false
    },
    {
      'que':
          '5. Is there any flexibility in terms of my time zone if I hire you?',
      'ans':
          'Yes, you can partner with The Kretoss Technology based on your preferred time zone. Our Flutter development team will work within your time zone, timeline, and milestone.',
      'expand': false
    },
    {
      'que':
          '6. Do you have any Non-Disclosure Agreements or other service-level agreements?',
      'ans':
          'We place a high value on client satisfaction, therefore we require that you sign an NDA to protect your idea and ensure that we follow the terms of the agreement. We also conform to data security guidelines and legal policies. The information is distributed based on the job hierarchy and requirements.',
      'expand': false
    },
  ];

  final skill = [
    {
      'name': 'Custom Flutter App Development',
      'content':
          'We have a skilled Flutter app development team who customizes your apps and creates a robust solution to meet your business\'s requirements.',
      'image': 'assets/images/custom-flutter-app-development.png'
    },
    {
      'name': 'Services for Cross-Platform Application Development',
      'content':
          'Top Flutter app development company that creates cross-platform mobile app solutions.',
      'image':
          'assets/images/cross-platform-application-development-services.png'
    },
    {
      'name': 'Flutter Application Development For iOS And Android',
      'content':
          'Take advantage of our Flutter iOS app development and Flutter Android app development services to get high-quality apps.',
      'image':
          'assets/images/flutter-application-development-for-ios-android.png'
    },
    {
      'name': 'Development of Dart Apps',
      'content':
          'Using the newest Dart libraries, Kretoss Technology provides Dart App Development Services to convert your native applications to hybrid form.',
      'image': 'assets/images/dart-app-deveopment.png'
    },
    {
      'name': 'Testing and Quality Assurance Services',
      'content':
          'Kretoss has a strong team of mobile app developers, quality analysts, and testers who ensure that your app is bug-free throughout the development process.',
      'image': 'assets/images/testing-quality-assurance-services.png'
    },
    {
      'name': 'Maintenance and Support for Flutter Apps',
      'content':
          'Kretoss offers a variety of Flutter application maintenance and support services.',
      'image': 'assets/images/flutter-apps-maintenance-support.png'
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
                  text3: 'Flutter App Development Services'),
              FlutterContent(),
              FlutterExplain(),
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
                            'Our Flutter App Development Services can Help you Maximize your Online Presence',
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff292930)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 25.0, right: 15.0),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textScaleFactor: 1.2,
                          text: TextSpan(
                            text:
                                'Kretoss Technology is the one-stop destination for all types of ',
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 15,
                                color: Color(0xff404040),
                                height: 1.5),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Flutter App Development Services',
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 15,
                                      color: Color(0xff404040),
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      ', with over 7 years of IT experience and thousands of projects delivered all across the globe. In the Android and iOS app development industry, we provide customized Flutter App Development Services and Solutions for a variety of platforms.',
                                  style: GoogleFonts.sourceSansPro(
                                    fontSize: 15,
                                    color: Color(0xff404040),
                                  )),
                            ],
                          ),
                        ),
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
                      'assets/images/flutter-application-development-services.jpg',
                    ),
                  ),
                ),
              ),
              Question(
                  question: question,
                  que:
                      'Why Choose Kretoss Technology for Flutter App Development Services?'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our Custom Flutter App Development Services',
                text2:
                    'KRETOSS TECHNOLOGY has developed mobile apps for a variety of market industries including finance apps, medical health & fitness apps, and many more. We also have an expert mobile app development team that is working on cutting-edge technologies and tools.',
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
