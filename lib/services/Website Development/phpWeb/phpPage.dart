import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/Website%20Development/phpWeb/phpContent.dart';
import 'package:kretoss_webapp/services/Website%20Development/phpWeb/phpExplain.dart';

import '../../../appbartop.dart';
import '../../../bottombar.dart';
import '../../../drawer/drawer.dart';
import '../../../estimate_project.dart';
import '../../MobileApp/freqque.dart';
import '../../MobileApp/question.dart';
import '../../MobileApp/service_path.dart';
import '../../MobileApp/talk.dart';
import '../../MobileApp/top.dart';

class PhpPage extends StatelessWidget {
  PhpPage({super.key});

  final question = [
    {
      'name': 'PHP Web Development',
    },
    {
      'name': 'Custom PHP Development',
    },
    {
      'name': 'Custom PHP Shopping Cart',
    },
    {
      'name': 'PHP Web Application Development',
    },
    {
      'name': 'PHP CMS Development',
    },
    {
      'name': 'Integration of PHP and Python/Django',
    },
    {
      'name': 'Integration of PHP & Active Directory',
    },
    {
      'name': 'Existing App Porting & Migration',
    },
    {
      'name': 'CakePHP/Yii/Laravel Development',
    },
    {
      'name': 'API Integration & Development',
    },
  ];

  final question1 = [
    {
      'name': 'Protocol for Systematic Coding',
    },
    {
      'name': 'Agile and Lean Development Methodologies',
    },
    {
      'name': 'The User-Friendly Design',
    },
    {
      'name': 'Work Insight Using Metrics',
    },
    {
      'name': 'Development Based on Tests',
    },
    {
      'name': 'Pricing based on Effort',
    },
    {
      'name': '24x7 Support, Even after the Website Launch',
    },
    {
      'name': 'An Environment with High Security',
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
      'que':
          '1. I\'m not sure what my exact requirements are. Can you help me?',
      'ans':
          'Yes, we will gladly help assist you with your project requirements, and it is completely FREE! Let us know, and we’ll be happy to assist you within 24 hours.',
      'expand': false
    },
    {
      'que': '2. What is the cost of developing a PHP website?',
      'ans':
          'We are a top PHP Web Development services company with a strong commitment to transparency, thus we provide estimates based on the project’s needs and requirements. We create a list of all project requirements and then calculate the average time required to complete each project. We also give a plan that includes the cost and duration of the whole project.',
      'expand': false
    },
    {
      'que': '3. Do you develop PHP websites that are mobile-friendly?',
      'ans':
          'Yes, we develop mobile-friendly websites. Our expert PHP developers or programmers are well-versed in cutting-edge CSS3 and HTML5 technologies. As a Top PHP Web Development Services Provider in USA, India, and many countries, we develop web applications that are interactive, graphically attractive, and are appropriate for mobile, and tablet devices.',
      'expand': false
    },
    {
      'que': '4. How do you ensure the project\'s quality?',
      'ans':
          'We follow a strong target-based strategy for every one of our client’s projects. Your project will be passed through our various teams for development, design, and quality testing once you have agreed to our services. This will ensure the greatest outcomes.',
      'expand': false
    },
    {
      'que': '5. What methods do you use to ensure quality?',
      'ans':
          'The website testing and maintenance are handled by our professional team at Kretoss Technology. We use a variety of research methods. Our team will evaluate the website on a variety of platforms and devices. We ensure that the programs or codes are checked before publishing them for final implementation.',
      'expand': false
    },
    {
      'que':
          '6. Do you offer post-development maintenance and support services?',
      'ans':
          'Yes! When our clients take ownership of their website and learn to manage it on their own, we are pleased. We’ll provide you with a collection of detailed video tutorials to guide you in learning your way around, and a training session to get you started. (We love answering your queries!)',
      'expand': false
    },
    {
      'que':
          '7. Is it possible to hire custom PHP development services for my project\'s minor changes?',
      'ans':
          'You definitely can. If you require custom PHP Web Development Services for minor modifications, contact us today. Our PHP experts will specify the number of man-hours required for the changes and provide estimates appropriately. This will save you time and effort while working with technological issues.',
      'expand': false
    },
    {
      'que':
          '8. Is it possible for me to hire PHP developers to complement my in-house custom PHP Web development team?',
      'ans':
          'You definitely can. We provide team augmentation services, in which our experienced resources work side by side with your team to maximize the benefits of the insource/outsource PHP Web Development approach.\n\nHowever, outsourcing your custom PHP web development demands to our PHP development experts is a preferable choice. This is because you may submit the requirements for the target purpose and, rather than handling the project internally, you outsource it to us because we are experts in that field and follow all practices to ensure quality, cost, and timeliness.',
      'expand': false
    },
    {
      'que':
          '9. What about the legal side of things – NDAs, Contracts, and so on?',
      'ans':
          'Yes, both are available, as well as much more. This keeps our business relationship open, safe, and well-organized.\n\nEvery project we undertake consists of the following components:\n• Deliverables, the scope of work, time, and cost are all included in a detailed proposal.\n• Terms & Conditions\n• Non-Disclosure Agreement\n• The sitemap for the project\n• Layout Overview\n• A Rough Draft',
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
                  text3: 'PHP Web Development Services'),
              PhpContent(),
              PhpExplain(),
              Question(question: question, que: 'Our PHP Development Services'),
              Divider(),
              Question(
                  question: question1,
                  que:
                      'Why Should You Choose Kretoss Technology for React JS Development?'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our PHP Website Development Services',
                text2:
                    'Kretoss Technology has developed PHP Websites for various market industries including finance apps, medical health & fitness apps, and many more. We also have an expert PHP Website Development team that is working on cutting-edge technologies and tools.',
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
