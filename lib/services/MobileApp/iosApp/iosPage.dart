import 'package:flutter/material.dart';
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
import 'iOSContent.dart';
import 'iOSExplain.dart';

class iOSPage extends StatelessWidget {
  iOSPage({super.key});

  final question = [
    {
      'name': 'Enterprise Apps',
    },
    {
      'name': 'Multimedia Apps',
    },
    {
      'name': 'eCommerce Apps',
    },
    {
      'name': 'Social Networking Apps',
    },
    {
      'name': 'Location-Based Apps',
    },
    {
      'name': 'AR/VR Apps',
    },
    {
      'name': 'Utility Apps',
    },
    {
      'name': 'iBeacon Apps',
    },
  ];

  final question1 = [
    {
      'name': 'End-to-End iOS App Development Services',
    },
    {
      'name': 'Scalable and Reliable iOS Applications',
    },
    {
      'name': 'Dedicated UI/UX Developers',
    },
    {
      'name': 'Flexibility and Predictability',
    },
    {
      'name': 'Experienced Team of Professionals',
    },
    {
      'name': 'Authorized Methodologies',
    },
    {
      'name': 'User-Friendly Design of iOS Application',
    },
    {
      'name': 'Strategic Technology Consulting',
    },
    {
      'name': 'Cost-Effective Pricing',
    },
    {
      'name': 'App Code as per Apple Guidelines',
    },
    {
      'name': '100% Customer Satisfaction',
    },
    {
      'name': '24x7 Maintenance and Support',
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
      'que': '1. How to Begin?',
      'ans':
          'Contact our team using any of the “Contact Us” options available on this page to begin the iOS mobile application development process. Our discussion will result in a detailed execution plan.',
      'expand': false
    },
    {
      'que': '2. What are your security policies?',
      'ans':
          'We appreciate the importance of keeping your ideas confidential and will sign a non-disclosure agreement (NDA) if you request it.',
      'expand': false
    },
    {
      'que': '3. How much does it cost to make an iOS app?',
      'ans':
          'The cost of developing an iOS app is determined by factors such as planned functionalities and graphic requirements. As a result, there is no set pricing, though we will provide you with a cost following the initial consultation.',
      'expand': false
    },
    {
      'que': '4. How quickly can you create an iOS app?',
      'ans':
          'You may rest confident that we’ll finish your iOS app development process and deliver your iPhone App on time. We’ve often surprised our clients by completing projects ahead of schedule.',
      'expand': false
    },
  ];

  final skill = [
    {
      'name': 'Vast Platform',
      'content':
          'The AppStore has millions of users searching for iPhone apps for a number of reasons, making it a vast market to target.',
      'image': 'assets/images/vast-platform.png'
    },
    {
      'name': 'New World Requirement',
      'content':
          'The mobile web days are gone now. iOS apps now contribute to a significant percentage of mobile users.',
      'image': 'assets/images/new-world-requirement.png'
    },
    {
      'name': 'Engaging',
      'content':
          'No other mobile web platform can compare to its engaging possibilities if the app is created correctly.',
      'image': 'assets/images/engaging.png'
    },
    {
      'name': 'Complete Solution',
      'content':
          'When compared to other mobile solutions, apps provide a more complete solution.',
      'image': 'assets/images/complete-solution.png'
    },
    {
      'name': 'User Acceptance',
      'content':
          'The user experience provided by mobile applications is undoubtedly the reason why most people have converted to using them.',
      'image': 'assets/images/user-acceptance.png'
    },
    {
      'name': 'Cost-effective',
      'content':
          'iOS apps are a cost-effective solution because they have the potential to be used by millions of people.',
      'image': 'assets/images/cost-effective.png'
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
                  text3: 'iOS App Development Services'),
              iOSContent(),
              iOSExplain(),
              Question(
                  question: question,
                  que: 'Our Core iOS App Development Services include'),
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
                            'Why iOS Application Development?',
                            textScaleFactor: 1.2,
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
                        child: Text(
                            'When it comes to smartphones, iPhones are in a class by themselves, and iOS application development services are used to create native iPhone applications.',
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
                            left: 15.0, top: 25.0, right: 15.0),
                        child: Text(
                            'The world has changed dramatically, and top payers’ excitement for iPhones and the apps created for them are two of the most convincing reasons to consider developing an iOS app for your business or company.',
                            textScaleFactor: 1.2,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 15,
                              color: Color(0xff404040),
                              height: 1.5,
                            )),
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
                      'Why Choose the Kretoss Technology for Your iOS App Development Services?'),
              Talk(),
              Top(
                text: 'Top Industries We Serve our iOS Development Services',
                text2:
                    'Kretoss Technology has developed iOS Apps for a variety of market industries including finance apps, medical health & fitness apps, and many more. We also have an expert iOS App Development team that is working on cutting-edge technologies and tools.',
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
