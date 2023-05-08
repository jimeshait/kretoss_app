import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/Website%20Development/laravelWeb/bloglaravel.dart';

import '../../../appbartop.dart';
import '../../../bottombar.dart';
import '../../../drawer/drawer.dart';
import '../../../estimate_project.dart';
import '../../MobileApp/freqque.dart';
import '../../MobileApp/question.dart';
import '../../MobileApp/service_path.dart';
import '../../MobileApp/talk.dart';
import '../../MobileApp/top.dart';
import 'laravelContent.dart';
import 'laravelExplain.dart';

class LaravelPage extends StatelessWidget {
  LaravelPage({super.key});

  final question = [
    {
      'name': 'Custom Laravel Development',
    },
    {
      'name': 'Laravel CMS Development',
    },
    {
      'name': 'Laravel Enterprise Solutions',
    },
    {
      'name': 'Upgrade to Laravel Version',
    },
    {
      'name': 'Laravel Middleware Development',
    },
    {
      'name': 'Laravel eCommerce Development',
    },
    {
      'name': 'Web APIs Development',
    },
    {
      'name': 'Laravel Migration Solutions',
    },
    {
      'name': 'Laravel Template Design',
    },
    {
      'name': 'Extension Development in Laravel',
    },
  ];

  final question1 = [
    {
      'name': 'FREE Consultation Without Charge',
    },
    {
      'name': 'Experts From Around the World',
    },
    {
      'name': 'Available 24x7 Support and Maintenance',
    },
    {
      'name': 'Easy Hiring Procedure',
    },
    {
      'name': 'Usage of Latest and Utilization of Cutting-Edge Technology',
    },
    {
      'name': 'On-Time Delivery and a Budget-Friendly Options',
    },
    {
      'name': 'Working Shifts and Time Availability',
    },
    {
      'name': 'Individual Approach',
    },
    {
      'name': 'Non-Disclosure Agreement for Confidential',
    },
    {
      'name': 'Flexible Engagement',
    },
    {
      'name': 'Reporting about Projects Regularly',
    },
    {
      'name': 'Authorization of Source Codes',
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
      'que': '1. What are Laravel development services?',
      'ans':
          'Laravel is a PHP framework that follows MVC architectural concepts and is free to use. With high-quality development and stress-free coding, web applications are built faster.',
      'expand': false
    },
    {
      'que': '2. How much does it Cost to Develop a Laravel Website?',
      'ans':
          'The cost of developing a Laravel website is determined by the features and level of customization you require. As a result, before determining the actual cost of Laravel Website Development, the Laravel development Services provider must examine such aspects.\n\nShare your idea with us, and we’ll share the development costs with you for FREE!',
      'expand': false
    },
    {
      'que':
          '3. How long will it take you to design and develop my Laravel Website?',
      'ans':
          'Unlike Laravel development services costs, the time it takes to develop a Laravel website project is determined by the number of features and level of customization you demand.',
      'expand': false
    },
    {
      'que': '4. Is My Website protected by the Laravel framework?',
      'ans':
          'Yes, Laravel is still the only PHP framework that provides you with the security of up to 99%. It protects your entire Laravel website from SQL injections, CSRF attacks, Mass Assignments Vulnerabilities, Cross-Site Scripting Security, and other threats.',
      'expand': false
    },
    {
      'que': '5. What differentiates Laravel from other PHP frameworks?',
      'ans':
          'Laravel differentiates itself from other PHP frameworks with features such as a command-line interface (CLI), blades template engine, ORM with various relationship methods, CSRF token, and more.',
      'expand': false
    },
    {
      'que': '6. Can you Develop Custom Web Development with Laravel?',
      'ans':
          'Yes, we can. We have professional and experienced Laravel Developers who can develop the greatest Custom Laravel Website for your specific business needs and requirements.',
      'expand': false
    },
    {
      'que': '7. How Can Laravel Development Services Benefit My Company?',
      'ans':
          '• Quick Services\n• Huge Community Support\n• High-quality built-in security\n• Social Media Assistance\n• Authentication Made Simple',
      'expand': false
    },
    {
      'que': '8. Why should I hire a Laravel developer from another country?',
      'ans':
          'Offshore developers give solutions that are quick, reliable, and cost-effective. Aside from these, there are other advantages, such as:\n• Time-Zone Compatibility\n• Comprehensive Coding Skills\n• Post Development Support & Development Services',
      'expand': false
    },
    {
      'que':
          '9. What are the advantages and disadvantages of using the Laravel Framework?',
      'ans':
          'Advantage: Composer, which allows developers to specify the package name, pre-built functions, and version, is one of the best features of Laravel development. The community support for Laravel Development Services is excellent, making it straightforward for developers.\n\nDisadvantage: The migration and upgrade process is difficult with Laravel development, and the documentation is lengthy.',
      'expand': false
    },
    {
      'que':
          '10. What factors should I consider while selecting a Laravel Development Company for my project?',
      'ans':
          'This could be a difficult procedure. To put it another way, make sure the Laravel Development Services Company offers at least the following services:\n• Custom Laravel Web Development Services\n• Laravel Extension Development Services\n• Laravel Migration and Update Services\n• Laravel eCommerce Services\n• API Development Services\n• Laravel Support & Maintenance Services',
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
                  text3: 'Laravel Development Services'),
              LaravelContent(),
              LaravelExplain(),
              Question(
                  question: question, que: 'Our Laravel Development Services'),
              Divider(),
              Question(
                  question: question1,
                  que:
                      'Why Choose Kretoss Technology for Laravel Development Services?'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our Laravel Development Services',
                text2:
                    'Kretoss Technology has developed Laravel Websites for various market industries including finance apps, medical health & fitness apps, and many more. We also have an expert Laravel Development Services team that is working on cutting-edge technologies and tools.',
                top: top,
              ),
              FreqQue(
                freq: freq,
              ),
              //BlogLaravel(),
              EstimateProject(),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
