import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/CMSDev/wordPressDev/wordPressDevContent.dart';
import 'package:kretoss_webapp/services/CMSDev/wordPressDev/wordPressDevExplain.dart';

import '../../../appbartop.dart';
import '../../../bottombar.dart';
import '../../../drawer/drawer.dart';
import '../../../estimate_project.dart';
import '../../MobileApp/freqque.dart';
import '../../MobileApp/question.dart';
import '../../MobileApp/service_path.dart';
import '../../MobileApp/talk.dart';
import '../../MobileApp/top.dart';
import '../../WebDesign/skill.dart';

class WordPressDevPage extends StatelessWidget {
  WordPressDevPage({super.key});

  final question = [
    {
      'name': 'Wordpress Web Development',
    },
    {
      'name': 'Wordpress Website Design',
    },
    {
      'name': 'Custom Wordpress Development',
    },
    {
      'name': 'Wordpress Plugin Development',
    },
    {
      'name': 'Wordpress Theme Development',
    },
    {
      'name': 'Custom Theme Design and Development',
    },
    {
      'name': 'PSD to Wordpress Conversion',
    },
    {
      'name': 'Wordpress eCommerce Development',
    },
    {
      'name': 'Blog Development',
    },
    {
      'name': 'CMS Development',
    },
    {
      'name': 'Corporate Blogging Solutions',
    },
    {
      'name': 'WordPress Installation and Configuration',
    },
    {
      'name': 'WordPress Third-Party Integration',
    },
    {
      'name': 'Hire Dedicated WordPress Developers',
    },
    {
      'name': 'Wordpress Support and Maintenance',
    },
    {
      'name': 'Wordpress SEO',
    },
  ];

  final question1 = [
    {
      'name': 'Consultation is Free of Charge',
    },
    {
      'name': 'Support and Maintenance are Available 24x7',
    },
    {
      'name': 'The Hiring Process is Simple',
    },
    {
      'name': 'Utilization of the Most Recent Technology',
    },
    {
      'name': 'Experts From All Over the World',
    },
    {
      'name': 'On-Time Delivery and a Budget-Friendly Option',
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
      'que': '1. What\'s the best way to get started?',
      'ans':
          'To begin, we would appreciate it if you could provide us with a brief description of your project using the contact page. Following that, we’ll set up a call between you and one of our experts. The objective of the conversation is for us to obtain a better understanding of your project so that we can offer you advice on how to carry it out.',
      'expand': false
    },
    {
      'que':
          '2. What will be the entire cost of developing a Wordpress Development?',
      'ans':
          'Give us a call to get a better idea of the total of what you want to develop.  We’ll ask you a few questions regarding your project, such as how interactive the store will be, what kind of graphic design you’ll require, and so on. We’ll be able to give you a good estimate after this brief session.',
      'expand': false
    },
    {
      'que': '3. What kind of security policy do you have in place?',
      'ans':
          'As a leading WordPress Development Services Company in USA and India, we recognize that your “business ideas” are significant assets, and we will do everything we can to protect them. If you still want us to sign an NDA before you utilize our services, we’ll gladly do so and take all necessary security precautions to secure your information.',
      'expand': false
    },
    {
      'que':
          '4. Can you help me with post-development support and maintenance?',
      'ans':
          'We provide after-sales support and maintenance as a full-service WordPress development agency. If you need us to maintain your website up and running around the clock, 365 days a year, or add new features, we’re here to help!',
      'expand': false
    },
    {
      'que':
          '5. Would I Be Able to Work With Your Developers If I\'m Not Very Tech-Savvy?',
      'ans':
          'Regardless of your technical skills, you will have no trouble working with our developers. Our project managers will assist you in understanding technical problems and terminology, making the process easier to handle. We do provide weekly updates on the progress of the project.',
      'expand': false
    },
    {
      'que':
          '6. Will my website display properly on smartphones, tablets, and laptops?',
      'ans':
          'We develop responsive websites that provide the best possible user experience for visitors across a variety of devices and screen resolutions. Our WordPress developers carefully create a version of the website that is easy to navigate on any device.',
      'expand': false
    },
    {
      'que': '7. Do you have any design options available?',
      'ans':
          'Yes, we provide a website design mock-up. We offer a few design alternatives based on your requirements and suggestions. We won’t move on with the development unless you’ve approved the design.',
      'expand': false
    },
  ];

  final skill = [
    {
      'name': 'Transparency',
      'content':
          'At Kretoss Technology, we believe in complete transparency, and we keep our clients informed and involved throughout the project development process.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': '100% On-Time Delivery',
      'content':
          'For the previous 10+ years of our business, our highly developed and time-tested project management strategies have resulted in a 100% on-time delivery track record.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'FREE One Month Support',
      'content':
          'To ensure that our customers are taken good care of even after the project has been completed, we offer free one-month support following the final delivery.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Flexible Engagements',
      'content':
          'We provide Customized Engagement Models, Formed to meet the specific requirements of the clients with various business requirements.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': '24x7 Support',
      'content':
          'Our experts are available 24 hours a day, 7 days a week, so you can contact them at any time. Solutions are provided only when you ask for them.',
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
                  text3: 'Custom WordPress Website Development Services'),
              WordPressDevContent(),
              WordPressDevExplain(),
              Question(
                  question: question,
                  que: 'Our Wordpress Website Development Services'),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 55.0, right: 15.0),
                        child: Text(
                          'What Makes Us Unique as a WordPress Web Development Services Company?',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                      'assets/images/web.jpg',
                    ),
                  ),
                ),
              ),
              Question(
                  question: question1,
                  que:
                      'Why Should You Choose Kretoss Technology for Wordpress Web Development?'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our Wordpress Development Services',
                text2:
                    'Kretoss Technology has developed and designed Wordpress Websites for various market industries including finance, medical health & fitness, and for many more following industries. We also have an expert WordPress Web Development Services team that is working on cutting-edge technologies and tools.',
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
