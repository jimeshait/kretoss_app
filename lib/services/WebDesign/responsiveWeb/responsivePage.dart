import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/WebDesign/responsiveWeb/responsiveContent.dart';
import 'package:kretoss_webapp/services/WebDesign/responsiveWeb/responsiveExplain.dart';

import '../../../appbartop.dart';
import '../../../bottombar.dart';
import '../../../drawer/drawer.dart';
import '../../../estimate_project.dart';
import '../../MobileApp/freqque.dart';
import '../../MobileApp/question.dart';
import '../../MobileApp/service_path.dart';
import '../../MobileApp/talk.dart';
import '../../MobileApp/top.dart';

class ResponsivePage extends StatelessWidget {
  ResponsivePage({super.key});

  final question = [
    {
      'name': 'Increase Organic Traffic',
    },
    {
      'name': 'Increase Conversion Rate',
    },
    {
      'name': 'Great User Experience',
    },
    {
      'name': 'Better User Engagement',
    },
    {
      'name': 'Increase Sales and Revenue',
    },
    {
      'name': 'Boost Search Engine Rankings',
    },
    {
      'name': 'Lower Bounce Rate',
    },
    {
      'name': 'Improved SEO Results',
    },
    {
      'name': 'Huge Amount of Mobile Traffic',
    },
    {
      'name': 'Lower Maintenance Needs',
    },
    {
      'name': 'Faster Web Page Loading',
    },
    {
      'name': 'Improve Online Browsing',
    },
    {
      'name': 'Improve Brand Awareness',
    },
    {
      'name': 'Stand Out among Your Competitors',
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
      'que': '1. How much time would it take to design my website?',
      'ans':
          'It all depends on what you really want to be designed and developed. Everything we make for you is unique and made with love. Please contact one of our sales representatives for further information. You can reach them by phone at (+1) 815 570 9603 or by email at service@kretoss.in.',
      'expand': false
    },
    {
      'que': '2. Are your Responsive Website Design Services Affordable?',
      'ans':
          'We provide economical and effective responsive website design services at Kretoss Technology. We provide a customized solution that is straightforward and affordable after we understand our client’s demands.',
      'expand': false
    },
    {
      'que': '3. What is the procedure for redesigning a website?',
      'ans':
          'The functionality and backend of the website remain unchanged. To put it another way, the design portion of the website has been improved. Thus, the timing is determined by the number of pages included.',
      'expand': false
    },
    {
      'que': '4. Will the design of my website be search engine friendly?',
      'ans':
          'Yes, all website design and development will be optimized for search engines. The elements are made to provide mobile compatibility, SEO friendliness, and meta customization, among other things.',
      'expand': false
    },
    {
      'que': '5. Do you provide theme customization services?',
      'ans':
          'Yes, we also do theme customization. Please contact our sales team to discuss customization and the next steps.',
      'expand': false
    },
    {
      'que': '6. Do you only work on WordPress?',
      'ans':
          'No, we also have experience with other platforms such as Custom PHP, Magento, Laravel, OpenCart, .Net, and many others.',
      'expand': false
    },
    {
      'que': '7. Will I be able to change the website once it\'s completed?',
      'ans':
          'It depends on the platforms for which the website is being built. Following completion, we provide training sessions to help you to understand the uploading process and how the back end operates.',
      'expand': false
    },
    {
      'que': '8. How long will You provide maintenance services to me?',
      'ans':
          'It is entirely dependent on the website being created. On complex platforms, the minimum maintenance period is 30 days and can be extended up to 90 days. Please contact us for further information.',
      'expand': false
    },
    {
      'que': '9. How can I keep track of my progress?',
      'ans':
          'We will send the link to our testing server with you once the design elements have been authorized, so you can keep track of the process.',
      'expand': false
    },
    {
      'que':
          '10. How can we get our company\'s website to rank higher on Google?',
      'ans':
          'We have to get the SEO done for your business website in order to help it rank better. Contact us for more details.',
      'expand': false
    },
    {
      'que': '11. How to Pick a Website Design Company?',
      'ans':
          'To locate the best website design company for your company or business, consider what type of website you require and what you want your new site to deliver. You should also think about your budget. Then, look up companies in your area online and study client testimonies or reviews to be sure your chosen company has a track record.',
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
                  text3: 'Responsive Website Design Services'),
              ResponsiveContent(),
              ResponsiveExplain(),
              Question(
                  question: question,
                  que:
                      'How Can Responsive Website Design Increase Sales of your Business?'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our Responsive Website Design Services',
                text2:
                    'Kretoss Technology has created Responsive Website Designs for various market industries including finance apps, medical health & fitness apps, and many more. We also have an expert Responsive Website Designer team that is working on cutting-edge technologies and tools.',
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
