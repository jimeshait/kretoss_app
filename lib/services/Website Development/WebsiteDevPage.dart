import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/floationbtn.dart';

import '../../appbartop.dart';
import '../../bottombar.dart';
import '../../drawer/drawer.dart';
import '../../estimate_project.dart';
import '../MobileApp/freqque.dart';
import '../MobileApp/question.dart';
import '../MobileApp/service_path.dart';
import '../MobileApp/talk.dart';
import '../MobileApp/top.dart';
import 'Website_content.dart';
import 'Website_explain.dart';

class WebsiteDevPage extends StatelessWidget {
  WebsiteDevPage({super.key});

  final question = [
    {
      'name': 'Simple to Use',
    },
    {
      'name': 'Reduced Risks',
    },
    {
      'name': 'Increased ROI',
    },
    {
      'name': 'Scalable and Reliable',
    },
    {
      'name': 'Easy Access',
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
      'que': '1. What kinds of websites/web apps do you develop?',
      'ans':
          'We are skilled in developing both web apps and websites. We’ve worked in practically every type of business with our years of experience, we can design websites that satisfy all of your project requirements. To look at it another way, we develop all four categories of websites/web apps:\n• Mobile-Friendly Website\n• Custom CMS-based Website\n• eCommerce Website Websites with ready-to-use\n• Content Management Systems (CMS)',
      'expand': false
    },
    {
      'que': '2. How much does it cost to develop a web app vs. a website?',
      'ans':
          'The cost of a web app is usually more, and you’ll need a website to go with it to represent your online portfolio. Web application development is common since the user interface is significantly different from that of a website, and only an experienced web app developer can create one for you.\n\nComplicated websites, on the other hand, are significantly more expensive than web apps, and a web app will rarely be practical to develop for that kind of website.\n\nOverall, it’s difficult to answer because it depends on the business and the number of users. It’s preferable to email us your requirements and we’ll give you a FREE estimate of what’s possible for your company.',
      'expand': false
    },
    {
      'que': '3. Can you help me to develop a website with my idea?',
      'ans':
          'Yes, we will guide you through the process. We’ve completed several unique projects for our clients in USA, India, UK, Canada, and many countries. You can give us your requirements for a FREE consultation.\n\nWe also have a variety of special websites and web app development services, especially for clients who wish to experiment with the current website development trends with our expertise in numerous emerging technologies.',
      'expand': false
    },
    {
      'que': '4. Will my website be accessible with smartphones and tablets?',
      'ans':
          'It undoubtedly will! More people are using smartphones to access the internet than ever before, and this trend is certain to continue. You risk losing a large portion of your potential audience if your website does not display or function properly on a mobile or tablet screen. It means that mobile responsive web design is now required. Every website we make is fully mobile-friendly for our clients.',
      'expand': false
    },
    {
      'que': '5. Is it necessary for me to be local to work with you?',
      'ans':
          'Nope! We have clients from all across the globe. Our team is working remotely, helping us to hire the right people for the job.',
      'expand': false
    },
    {
      'que': '6. When the site is ready, will I be able to change it myself?',
      'ans':
          'Yes! When our clients take ownership of their website and learn to manage it on their own, we are pleased. We’ll provide you with a collection of detailed video tutorials to guide you in learning your way around, and a training session to get you started. (We love answering your queries!)',
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
                  text3: 'Website Development Services'),
              WebsiteContent(),
              WebsiteExplain(),
              Question(
                  question: question,
                  que:
                      'Why should you choose Kretoss Technology for Website Development Service?'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our Website Development Services',
                text2:
                    'Kretoss Technology has developed Websites for a variety of market industries including finance websites, medical health & fitness websites, and many more. We also have an expert Website Development team that is working on cutting-edge technologies and tools.',
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
