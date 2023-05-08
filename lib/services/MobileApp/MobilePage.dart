import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/MobileApp/Explain.dart';
import 'package:kretoss_webapp/services/MobileApp/Mobile_content.dart';
import 'package:kretoss_webapp/services/MobileApp/question.dart';
import 'package:kretoss_webapp/services/MobileApp/service_path.dart';
import 'package:kretoss_webapp/services/MobileApp/talk.dart';
import '../../appbartop.dart';
import '../../bottombar.dart';
import '../../drawer/drawer.dart';
import '../../estimate_project.dart';
import 'freqque.dart';
import 'top.dart';

class MobilePage extends StatelessWidget {
  MobilePage({super.key});

  final question = [
    {
      'name': 'Experienced Team of Professionals',
    },
    {
      'name': 'Authorized Methodologies',
    },
    {
      'name': 'Strategic Technology Consulting',
    },
    {
      'name': 'Dedicated Mobile App Developers',
    },
    {
      'name': 'Flexibility and Predictability',
    },
    {
      'name': 'Cost-Effective Pricing',
    },
    {
      'name': 'End-to-End Mobile App \nDevelopment Services',
    },
    {
      'name': 'Scalable and Reliable Mobile Application',
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
      'que': '1. Is it secure if I tell you about my mobile application idea?',
      'ans':
          'The process of developing a mobile app is completely safe and secure. We’re also happy to sign a non-disclosure agreement to guarantee that your software is a safe concept.',
      'expand': false
    },
    {
      'que':
          '2. What is the cost of developing a mobile application as per my requirements?',
      'ans':
          'The average cost and time will be determined by the app’s concept and structure, as well as features, platforms, development hours, manpower, and other factors.',
      'expand': false
    },
    {
      'que': '3. Can you take over the maintenance of an app I already have?',
      'ans':
          'We can maintain an existing application built on the technology we provide if you have one. Say the application was developed on a different platform and, because of its age, is unlikely to be able to take over maintenance. It might be beneficial to have it redeveloped in that case.',
      'expand': false
    },
    {
      'que': '4. What is the method of payment?',
      'ans':
          'There’s no need to pay for the entire cost of your mobile app once. The project is divided into phases, and the app’s pricing is divided into installments. While we work on your app, invoices will be sent out on a regular basis (debt payment rates based on the project).',
      'expand': false
    },
    {
      'que': '5. What should I do now that I have an app idea?',
      'ans':
          'If you have an app idea, the next step is to sign a non-disclosure agreement. Following that, in our Preliminary stage, we’ll be able to learn more about your company’s requirements.\n\nDuring the design phase, the idea is then passed on to our creative minds. The app is then developed and implemented across multiple platforms. We provide committed project leadership throughout the development process.',
      'expand': false
    },
    {
      'que': '6. What Skills Are Required To Create A Mobile App?',
      'ans':
          'If you have an app idea, the next step is to sign a non-disclosure agreement. Following that, in our Preliminary stage, we’ll be able to learn more about your company’s requirements.\n\nDuring the design phase, the idea is then passed on to our creative minds. The app is then developed and implemented across multiple platforms. We provide committed project leadership throughout the development process.',
      'expand': false
    },
    {
      'que':
          '7. Is Android or iOS the best platform for mobile application development?',
      'ans':
          'There is no single best platform for developing mobile applications. It all depends on the app’s requirements and which platform is best for it. Android and iOS are basically platforms for developing and delivering mobile apps.',
      'expand': false
    },
    {
      'que':
          '8. Why Should I Choose Kretoss Technology For Mobile Application Development for my Business?',
      'ans':
          'We are a group of professional and experienced mobile application development services who have worked on apps for iOS App Development, Android, Xamarin, and many other technologies. We provide app development services for a variety of industries, including e-commerce, gaming, and finance. We have over 7 years of expertise and have analyzed a variety of factors in order to produce reliable programs.',
      'expand': false
    },
    {
      'que':
          '9. What Are The Different Types Of Mobile Applications You Can Create?',
      'ans':
          'We can create native or hybrid mobile apps on a variety of platforms, including iOS, Android, Xamarin, Flutter, Ionic, and others. \n\nBased on your business scenario, you can choose whether to design a native or hybrid mobile app. We recommend a native mobile application if you wish to combine the mobile app technology with the device’s hardware.',
      'expand': false
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
                  text3: 'Mobile Application Development Services'),
              MobileContent(),
              Explain(),
              Question(
                question: question,
                que:
                    'Why Choose the Kretoss Technology for Your Mobile Application Development Services?',
              ),
              Talk(),
              Top(
                text: 'Top Industries We Serve our Mobile Development Services',
                text2:
                    'Kretoss Technology has developed Mobile Apps for a variety of market industries including finance apps, medical health & fitness apps and many more. We also have an expert Mobile Application Development team that is working on cutting-edge technologies and tools.',
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
