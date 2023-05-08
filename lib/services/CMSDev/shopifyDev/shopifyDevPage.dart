import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/CMSDev/shopifyDev/shopifyContent.dart';
import 'package:kretoss_webapp/services/CMSDev/shopifyDev/shopifyExplain.dart';
import '../../../appbartop.dart';
import '../../../bottombar.dart';
import '../../../drawer/drawer.dart';
import '../../../estimate_project.dart';
import '../../MobileApp/freqque.dart';
import '../../MobileApp/question.dart';
import '../../MobileApp/service_path.dart';
import '../../MobileApp/talk.dart';
import '../../MobileApp/top.dart';

class ShopifyDevPage extends StatelessWidget {
  ShopifyDevPage({super.key});

  final question = [
    {
      'name': 'Shopify Store Development',
    },
    {
      'name': 'Shopify App Development',
    },
    {
      'name': 'Shopify Web Development',
    },
    {
      'name': 'Custom Development',
    },
    {
      'name': 'Theme Development',
    },
    {
      'name': 'Custom Theme Development',
    },
    {
      'name': 'eCommerce Development',
    },
    {
      'name': 'Shopify Magento Migration',
    },
    {
      'name': 'Migration to Shopify',
    },
    {
      'name': 'Third-Party Integration',
    },
    {
      'name': 'Shopify Store Setup and Configuration',
    },
    {
      'name': 'Shopify Support and Maintenance',
    },
  ];

  final question1 = [
    {
      'name': 'Certified and dedicated Shopify employees are available to hire',
    },
    {
      'name': 'Round-the-clock Client Assistance for Shopify Support',
    },
    {
      'name':
          'Extensions and features modified to improve the shopping experience',
    },
    {
      'name':
          'Provide complete setup and configuration services for Shopify Stores',
    },
    {
      'name': '100% Bug-Free and Error-Free Development',
    },
    {
      'name': 'Having Vast Expertise in the IT Field',
    },
    {
      'name': 'Providing Affordable Pricing Models',
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
          '1. Is Shopify the best platform for building an online eCommerce store?',
      'ans':
          'Shopify is a popular eCommerce development platform that makes it simple for businesses to launch an eCommerce store. Shopify, being one of the most popular eCommerce platforms, offers a large range of templates, customization possibilities, third-party app integrations, and other features.\n\nAs a result, businesses can quickly take their online store and provide the perfect solution to their customers. Allow Kretoss Technology to help you with Shopify Web Development, Shopify App Development, Shopify Custom Development, Shopify Plugin Development, Shopify Theme Development, and Shopify Module Development so that you may improve the performance of your eStore.',
      'expand': false
    },
    {
      'que': '2. What are the advantages of using Shopify?',
      'ans':
          'Shopify is a popular solution for developing, deploying, and managing a whole eCommerce store. Shopify is used by both startups and established businesses to move their stores online, drive more customers, and grow their businesses.\n\nSome Advantages::\n• Setup is simple and quick.\n• Safe and reliable\n• Support is available 24 x 7\n• Simple Customization',
      'expand': false
    },
    {
      'que': '3. What will the cost of the Shopify app or Web Development?',
      'ans':
          'For Shopify App or Web Development, we provide three alternative pricing options. You can choose the pricing plan that best meets your needs based on your project requirements. First, we’ll figure out what your project needs, and then our team will provide a price strategy that meets those requirements.',
      'expand': false
    },
    {
      'que': '4. How long does it take to develop a Shopify project?',
      'ans':
          'This is highly dependent on the requirements of your project. Our Shopify developers will first understand your requirements, do market research, and know about the needs of your customers. We may also provide you with an expected project delivery time based on it.\nNote\nthat the ETA is subject to change based on project requirements that change over time.',
      'expand': false
    },
    {
      'que': '5. Will I have to sign NDAs and SLAs?',
      'ans':
          'Yes, we take the security of our clients seriously at Kretoss Technology, and we ensure to sign all market-authorized industrial documents on time. All of our clients sign NDAs and SLAs, which allows us to be honest and work together seamlessly.',
      'expand': false
    },
    {
      'que':
          '6. What makes Kretoss apart from other Shopify Development Agencies?',
      'ans':
          'Kretoss Technology, a Top Shopify Development Agency, has been in business for over a decade and has a strong team of experienced developers, designers, testers, and other professionals, putting us ahead of the competition. Our Shopify developers are capable of handling difficult requirements and delivering a solution that meets the expectations of our clients.',
      'expand': false
    },
    {
      'que':
          '7. Is it possible for SMEs to use Shopify for eCommerce development?',
      'ans':
          'Yes, of course! Any company, regardless of size, may use Shopify to expand its eCommerce business online.\n\nYou may easily rely on our Shopify development services, such as Shopify Web Development, Shopify App Development, Shopify Custom Development, Shopify Plugin Development, Shopify Theme Development, Shopify Module Development, and so on with Kretoss Technology.\n\nOur experienced Shopify developers will give you complete Shopify development help as well as an end-to-end solution.',
      'expand': false
    },
    {
      'que': '8. Can you help me with the development of my Shopify Store?',
      'ans':
          'Yes, our Shopify developers are skilled and experienced well about the platform, making it simple for us to fit your requirements. Kretoss Technology is a Top Shopify Development Agency, that will provide you with thorough direction and assistance throughout the development process.',
      'expand': false
    },
    {
      'que':
          '9. Is it possible for you to develop Shopify Custom Development for me?',
      'ans':
          'Yes, of course! Our Shopify developers can provide fully Shopify Custom Development Services that meet your company’s requirements. We’ve helped a number of businesses in developing a unique eCommerce store from the bottom up in order to expand their customer base.',
      'expand': false
    },
    {
      'que':
          '10. Is it possible for me to hire Shopify developers from your agency for my project?',
      'ans':
          'Yes, of course! Kretoss Technology, the Best Shopify development Agency, can help you employ developers. Use our Shopify development services to get your online store up and running. We’ve assisted a number of businesses in developing their eCommerce Store and providing them with a customized solution that matches their users’ expectations.',
      'expand': false
    },
    {
      'que': '11. Which model of software development are you using?',
      'ans':
          'We use industry-standard approaches to develop software at Kretoss Technology. Depending on your project requirements, we use Agile, waterfall, iterative, and other methodologies. We like the Agile technique because it helps us and our clients to work together, provide runtime requirements, and provide high-quality products.',
      'expand': false
    },
    {
      'que':
          '12. Is it possible for me to communicate directly with the developers I\'ve hired?',
      'ans':
          'Yes, of course! You can talk to your Shopify developers directly about your concerns, questions, or new requirements. Our developers will analyze and offer you a solution that matches your requirements. You can use Google Meet, Skype, Zoom, or Microsoft Teams to communicate with our developers.',
      'expand': false
    },
    {
      'que':
          '13. Can you help me to Migrate my Existing eCommerce store to Shopify?',
      'ans':
          'Definitely! Regardless of the technology you use, we can help you migrate your existing eCommerce store to and from Shopify.',
      'expand': false
    },
    {
      'que': '14. Can you Customize my Shopify eCommerce store?',
      'ans':
          'Yes, we can help you with customizing your existing Shopify eCommerce store after understanding your customers’ needs.',
      'expand': false
    },
    {
      'que': '15. Will your company take care of my maintenance and support?',
      'ans':
          'Yes, of course! We will provide you with maintenance, regular updates, and support after we have completed the development phase. You may provide seamless assistance to your users.',
      'expand': false
    },
    {
      'que': '16. In my Shopify store, can I use various payment modules?',
      'ans':
          'Definitely! In your Shopify eCommerce store, you can integrate multiple payment modules to give your customers a hassle-free online shopping experience. Stripe, PayPal, Apple Pay, Google Pay, Debit/Credit Card, and Net Banking are just a few of the payment gateways that our Shopify experts can help you integrate.',
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
                  text3: 'Shopify Development Services'),
              ShopifyContent(),
              ShopifyExplain(),
              Question(
                  question: question, que: 'Our Shopify Development Services'),
              Divider(),
              Question(
                  question: question1,
                  que:
                      'Why Should You Choose Kretoss Technology for Shopify Web or App Development?'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our Shopify Development Services',
                text2:
                    'Kretoss Technology has developed Shopify Web and Mobile Apps and Websites for various market industries including finance, medical health & fitness, and for many more following industries. We also have an expert Shopify Development Services team that is working on cutting-edge technologies and tools.',
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
