import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/WebDesign/reactJSWeb/reactJSContent.dart';
import 'package:kretoss_webapp/services/WebDesign/reactJSWeb/reactJSExplain.dart';

import '../../../appbartop.dart';
import '../../../bottombar.dart';
import '../../../drawer/drawer.dart';
import '../../../estimate_project.dart';
import '../../MobileApp/freqque.dart';
import '../../MobileApp/question.dart';
import '../../MobileApp/service_path.dart';
import '../../MobileApp/talk.dart';
import '../../MobileApp/top.dart';

class ReactJSPage extends StatelessWidget {
  ReactJSPage({super.key});

  final question = [
    {
      'name': 'React JS Web Development',
    },
    {
      'name': 'React JS Mobile App Development',
    },
    {
      'name': 'React JS Custom Web Development',
    },
    {
      'name': 'React Front End Development',
    },
    {
      'name': 'React Back End Development',
    },
    {
      'name': 'React JS Single Page Application Development',
    },
    {
      'name': 'Enterprise Web Application Development',
    },
    {
      'name': 'Custom React JS Web App Development',
    },
    {
      'name': 'React JS for Web Application',
    },
    {
      'name': 'React JS Dynamic UI/UX Development',
    },
    {
      'name': 'React Native App Migration',
    },
    {
      'name': 'React JS Plugins',
    },
    {
      'name': 'React JS App Migration',
    },
    {
      'name': 'Support & Maintenance for React JS',
    },
    {
      'name': 'React JS with Laravel',
    },
    {
      'name': 'React JS with CodeIgniter',
    },
    {
      'name': 'React JS backend API implementation',
    },
    {
      'name': 'Corporate Android App Development',
    },
    {
      'name': 'React JS IOS App Development',
    },
    {
      'name': 'React JS PWA Development',
    },
  ];

  final question1 = [
    {
      'name':
          'Highly Skilled Team with Expert & Professional React JS Developers',
    },
    {
      'name': 'Extensive Domain Experience',
    },
    {
      'name': 'Unique and High-Quality User Interfaces and User Experiences',
    },
    {
      'name': 'Delivered Many React JS Web Applications',
    },
    {
      'name': 'Ensuring of Browser Compatibility',
    },
    {
      'name': 'Following Agile Methodology',
    },
    {
      'name': 'Client-Focused React JS Applications',
    },
    {
      'name': 'Affordable Project Cost to Everyone',
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
      'que': '1. Do you provide free support for products you built?',
      'ans':
          'Yes, all of our products and services come with 90 days of free support for any issues that arise during the software development process. We completely support the product we develop and will help you in any way we can if a bug occurs; rest assured that we will prioritize the issue and resolve it as quickly as possible.',
      'expand': false
    },
    {
      'que': '2. How much does it cost to develop a React JS app?',
      'ans':
          'We’ll need to go over your project needs and requirements in detail to determine the exact amount needed to develop a React JS app. We can estimate the overall cost based on the app design and the total workload involved.',
      'expand': false
    },
    {
      'que': '3. Why should I use React JS to develop my app?',
      'ans':
          '• React JS makes it simple to develop sophisticated apps.\n• One-way data binding is used.\n• React JS-based apps are adaptable and scalable.\n• It’s SEO-friendly, and it’s simple to test and track.You can reuse the code from previous app\n• development projects, lowering development costs.',
      'expand': false
    },
    {
      'que': '4. What makes React JS and React Native so different?',
      'ans':
          'React Native is a cross-platform app development framework, whereas React JS is a front-end library. The former is used to develop user interfaces, while the latter can be used to develop mobile apps. React JS and React Native can be used together to create incredibly powerful mobile apps.',
      'expand': false
    },
    {
      'que':
          '5. Will my website display properly on smartphones, tablets, and laptops?',
      'ans':
          'We develop responsive websites that provide the best possible user experience for visitors or users across a variety of devices and screen resolutions. Our experts carefully develop a version of the website that is easy to navigate on any device.',
      'expand': false
    },
    {
      'que': '6. Is React JS Search Engine Optimization - SEO Friendly?',
      'ans':
          'For any business, search engine optimization (SEO)is important. Because of its quick rendering, React JS helps businesses get first-page rankings in search engines like Google.',
      'expand': false
    },
    {
      'que':
          '7. Is it possible for your development team to offer unique React JS services?',
      'ans':
          'Yes, as a leading React JS development company in USA, and India, we have rich experience developing unique solutions that are tailored to your requirements. Let’s get started building custom React JS applications together.',
      'expand': false
    },
    {
      'que': '8. Is your team capable of migrating an application to React JS?',
      'ans':
          'Yes. Our developers can help you move your existing application to React JS. To get started, hire our React JS developers.',
      'expand': false
    },
    {
      'que': '9. Is my project concept safe with your company?',
      'ans':
          'Before beginning any project, we sign a Non-Disclosure Agreement (NDA) to maintain complete data confidentiality.',
      'expand': false
    },
    {
      'que':
          '10. I\'m looking for something specific. Can the development team fulfill those requirements?',
      'ans':
          'Working with a variety of industries and businesses of various sizes has allowed us to cater to each company’s needs and provide the best solution possible. Tell us more about your goals, and we’ll make sure you get the services you want or need.',
      'expand': false
    },
    {
      'que': '11. What methods do you use to ensure security compliance?',
      'ans':
          'We assure you that your data is secure and shared only with project members. For development, testing, and deployment, we follow all standard security protocols.',
      'expand': false
    },
    {
      'que':
          '12. Is it possible for me to hire a specialized React JS developer?',
      'ans':
          'Yes. You can set up an interview to find the right person for your project. To schedule an interview, please contact us right away.',
      'expand': false
    },
    {
      'que': '13. Who will be the owner of the development app?',
      'ans':
          'You will be the only owner of all paid-for intellectual property as a client.',
      'expand': false
    },
    {
      'que': '14. How many resources do you require from your client?',
      'ans':
          'We require the help of a project manager who can describe your business procedures in order for us to communicate effectively. The total quantity of resources, however, can differ from project to project.',
      'expand': false
    },
    {
      'que':
          '15. Do you offer React JS application development services in accordance with the client\'s schedule?',
      'ans':
          'Our React JS Web Development team works according to your schedule, timeline, and business objectives.',
      'expand': false
    },
    {
      'que':
          '16. Will the development team dedicate their full attention to the project?',
      'ans':
          'Yes. The selected development team will dedicate their complete attention to your project.',
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
                  text3: 'React JS Development Services'),
              ReactJSContent(),
              ReactJSExplain(),
              Question(
                  question: question, que: 'Our React JS Development Services'),
              Divider(),
              Question(
                  question: question1,
                  que:
                      'Why Should You Choose Kretoss Technology for React JS Development?'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our React JS Development Services',
                text2:
                    'Kretoss Technology has developed React JS Mobile and Web Apps for various market industries including finance, medical health & fitness, and for many more following industries. We also have an expert Mobile App Development team that is working on cutting-edge technologies and tools.',
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
