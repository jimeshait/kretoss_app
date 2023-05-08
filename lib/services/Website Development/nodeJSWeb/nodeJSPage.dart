import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/Website%20Development/nodeJSWeb/nodeJSExplain.dart';

import '../../../appbartop.dart';
import '../../../bottombar.dart';
import '../../../drawer/drawer.dart';
import '../../../estimate_project.dart';
import '../../MobileApp/freqque.dart';
import '../../MobileApp/question.dart';
import '../../MobileApp/service_path.dart';
import '../../MobileApp/talk.dart';
import '../../MobileApp/top.dart';
import 'nodeJSContent.dart';

class NodeJSPage extends StatelessWidget {
  NodeJSPage({super.key});

  final question = [
    {
      'name': 'Node JS Web Development',
    },
    {
      'name': 'Node JS Dynamic UI/UX',
    },
    {
      'name': 'Custom Node JS Development Solutions',
    },
    {
      'name': 'Node JS Real-Time Apps Solution',
    },
    {
      'name': 'Dashboard Development',
    },
    {
      'name': 'Node JS Migration Solutions',
    },
    {
      'name': 'Node JS Social Web Application Development',
    },
    {
      'name': 'Portal Development',
    },
    {
      'name': 'Node JS Support and Maintenance',
    },
    {
      'name': 'Node JS eCommerce Development',
    },
    {
      'name': 'API & Package Development Using Node JS',
    },
    {
      'name': 'Plugins Development Services',
    },
    {
      'name': 'Node JS Consulting Services',
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
      'que': '1. How much will a Node JS Developer cost me?',
      'ans':
          'The price of hiring a Node JS expert is entirely determined by the size and complexity of your website and web app. Every business has unique requirements, and the time it takes to develop a solution varies depending on the size of your website or web app. You can send us your requirements, and we’ll give you a FREE estimate for hiring a Node JS Developer.',
      'expand': false
    },
    {
      'que': '2. How can I keep track of the progress of my project?',
      'ans':
          'Our developers are known for their attention to the job and for delivering best-in-class solutions within the timeframe set. You will also be allocated a Project Manager who will keep you updated on the status of your project on a regular basis. You can interact with us using a variety of means, including chat, Skype, email, and phone calls.',
      'expand': false
    },
    {
      'que':
          '3. Do your Node JS application development services have any hidden Charges?',
      'ans':
          'No. We like to keep things very clear as a top Node JS development Services Company. Everything from design to development to testing is included in our development costs. We also provide free support and maintenance services for three months for our client’s convenience. Our professionals want to make certain that the product functions smoothly and without errors.',
      'expand': false
    },
    {
      'que': '4. Is it possible to convert my existing website to Node JS?',
      'ans':
          'Yes, we will greatly help you in migrating your existing web application to Node JS. You can use our Node JS migration services to migrate your website or web app. Our professionals will help you with migrating your existing website to Node JS in a seamless manner. You may simply take advantage of NodeJS’s extensive functionality without fear of losing your data.',
      'expand': false
    },
    {
      'que':
          '5. What types of apps are the most suitable for Node.js development?',
      'ans':
          'Node.js is the preferred framework for creating servers that must handle thousands of connections, applications that require increased data exchange (video and messaging app, real-time monitoring applications), single page, and responsive mobile applications where complete page refreshes would result in a poor user experience, and prototyping quickly. Consult with us if you want to know if Node.js is the correct platform for your business. With our Node.js consulting and development services, we would be delighted to examine your business requirements and help you.',
      'expand': false
    },
    {
      'que': '6. How skilled is your Node team?',
      'ans':
          'We have a large team of experts who specialize in full-stack MEAN technologies, including Node.js. Our Node.js developers, consultants, and architects have developed and migrated a large number of apps, so they are well-versed in every aspect of the Node.js world, including the most popular backend frameworks. Our Node.js consulting & development services help our clients develop client-side and server-side web apps with strong social and video integration by utilizing Node.js’ speed, high-performance, and minimal features.',
      'expand': false
    },
    {
      'que':
          '7. Which development processes do you use when working on a Node.js project?',
      'ans':
          'Agile approaches are used in our Node.js development and any other projects. We have extensive experience with Kanban, Scrum, and XP methodologies. Our company uses an iterative and incremental development process backed by cutting-edge engineering practices to deliver working software that meets or exceeds user expectations in the shortest period possible while also offering the best Return On Investment (ROI).',
      'expand': false
    },
    {
      'que':
          '8. Will I have a choice of front-end and back-end technologies and databases?',
      'ans':
          'Yes, absolutely. Depending on the requirements and context of the application state, we’ve used a variety of mix-and-match technologies. For the front-end, we can use AngularJS or ReactJS, for example. For the middle layer, we can utilize ExpressJS or HapiJS, and we can choose from a variety of database solutions to meet your needs. Based on your objectives, our Node.js consulting team may help you in evaluating the possible solutions available for your front and backend.',
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
                  text3: 'Node JS Development Services'),
              NodeJSContent(),
              NodeJSExplain(),
              Question(
                  question: question, que: 'Our Node JS Development Services'),
              Talk(),
              Top(
                text:
                    'Top Industries We Serve our Node JS Development Services',
                text2:
                    'Kretoss Technology has developed Mobile Apps for various market industries including finance apps, medical health & fitness apps, and many more. We also have an expert Node JS Development Services team that is working on cutting-edge technologies and tools.',
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
