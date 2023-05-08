import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/MobileApp/reactnativeApp/reactNativeExplain.dart';
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
import 'reactNativeContent.dart';

class ReactNativePage extends StatelessWidget {
  ReactNativePage({super.key});

  final question = [
    {
      'name': 'React Native Mobile App Development',
    },
    {
      'name': 'Hybrid Mobile App Development',
    },
    {
      'name': 'React Native Android App Development',
    },
    {
      'name': 'React Native iOS App Development',
    },
    {
      'name': 'Code Development in React Native',
    },
    {
      'name': 'React Native UI/UX App Development',
    },
    {
      'name': 'Application Migration (Other to React Native)',
    },
    {
      'name': 'React Native App Maintenance',
    },
    {
      'name': 'React Plugin Development',
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
      'que': '1. Is React Native Useful to Create Mobile Apps?',
      'ans':
          'Using React Native, you can quickly build front-end apps and scale-out your back-end with a variety of technology stacks. It has become a go-to solution for React Native mobile development due to its scalability, resilience, portability, and ease of usage.',
      'expand': false
    },
    {
      'que':
          '2. Can You Help Me with Finalizing the Scope of My Project in React Native?',
      'ans':
          'Yes, we will assist you in selecting the finest technology for the app you require. React Native is the optimal solution for cross-platform app development, therefore if you are searching for early entering the market on a budget, React Native will be an excellent choice. Again, it’s difficult to comment when there are so many variables to consider, and we don’t know your particular business information or app requirements. You can send us your project needs and requirements and we will provide you with a FREE consultation.',
      'expand': false
    },
    {
      'que': '3. Can You Help Me in Migrating My Existing App to React Native?',
      'ans':
          'Yes! We can help you migrate your app effortlessly if you hire dedicated React Native developers from us. We are here to assist you with whatever development platform you have used. Our professionals will also quickly handle any technical complexities and get the application up and running if some changes are required.',
      'expand': false
    },
    {
      'que': '4. How long does a React Native app take to develop?',
      'ans':
          'It is entirely dependent on the project’s requirements. To begin, our developers will speak with you and identify the project’s needs. We will specify the time and resources required to develop React Native applications based on this and the React Native app development services you choose.',
      'expand': false
    },
    {
      'que': '5. How Much does it Cost to Develop a React Native Application?',
      'ans':
          'The cost of developing a React Native app is difficult to explain in a short FAQ. What we can do is guide you through everything once you discuss your project requirements, so you can get a good understanding of how much the app you’re planning will cost, don’t worry, the consultation is entirely FREE.',
      'expand': false
    },
    {
      'que': '6. Will your team communicate across time zones?',
      'ans':
          'Yes! Our team will assist you with app development, support, and more around the clock. Define your specifications and, if necessary, speak directly with our developers. Hire React Native app developers and we’ll be there for you 24 hours a day, 7 days a week.',
      'expand': false
    },
    {
      'que':
          '7. Will your React Native developers create applications that are SEO-friendly?',
      'ans':
          'Yes! Our professionals are aware of the need for SEO-friendly applications. This has helped them recognize the complexities and importance of SEO. As a result, our responsive native app developers will take care of all SEO technicalities, such as meta titles, meta descriptions, keywords, URLs, and many more SEO factors. As a result, your application will be ready to use by people and will also rank well in search engines.',
      'expand': false
    },
    {
      'que':
          '8. Will I be required to sign NDAs and SLAs to work with your team?',
      'ans':
          'Yes! We require every customer to sign NDAs and SLAs in accordance with the most recent market rules and regulations for React Native app development. This allows clients and us to collaborate more effectively and stay on the same path. It also allows us to better serve our consumers, understand and meet their needs and requirements, and create a better user experience.',
      'expand': false
    },
    {
      'que': '9. Will you provide security updates regularly?',
      'ans':
          'Any application’s security is essential, and following the current security rules and utilizing the most up-to-date security features is a requirement. Following these guidelines, our expert team will provide you with the most recent security upgrades regularly, making it safe to store your users’ data and keeping your application secure.',
      'expand': false
    },
    {
      'que': '10. Can you create custom React Native applications for me?',
      'ans':
          'We definitely can. Many of our clients have relied on our developers to meet their custom application needs. You can come up with an idea and we’ll help you turn it into a reality. Furthermore, if you require any special dedicated features, we will be happy to assist you.',
      'expand': false
    },
    {
      'que': '11. Can you create industry-specific apps?',
      'ans':
          'We have industry-specific applications for almost everything. Many companies have benefited from our support in developing industry-specific solutions, allowing them to better serve their customers. We offer solutions for a variety of industries; simply hire React Native developers and our team will be happy to help you in developing the industry-specific app.',
      'expand': false
    },
  ];

  final skill = [
    {
      'name': 'Top-Notch Programmers',
      'content':
          'Kretoss Technology has professional and experienced React Native App developers who will not accept anything less than perfection and have developed unique React native mobile apps for various operating systems such as Android and iOS.',
      'image': 'assets/images/top-notch-programmers.png'
    },
    {
      'name': 'Best in Class Assurance of Quality',
      'content':
          'When it comes to performance and quality, we ensure that every programming code is checked for errors so that we can give you excellent react-native services that are suited to your business goals.',
      'image': 'assets/images/Best-in-Class-Assurance-of-Quality.png'
    },
    {
      'name': '100% Customer Satisfaction',
      'content':
          'They have a strong ability to create react native apps that deliver 100% client satisfaction because of their results-oriented approach.',
      'image': 'assets/images/customer-satisfaction.png'
    },
    {
      'name': '24x7 Maintenance and Support',
      'content':
          'To assist your business goals, we provide constant and 24x7 support and maintenance services for any kind of query, and solution.',
      'image': 'assets/images/support.png'
    },
    {
      'name': 'Affordable Prices',
      'content':
          'We provide react native app development services within your budget and in accordance with your company\'s objectives. The cost of the project is determined by your project requirements.',
      'image': 'assets/images/cost.png'
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
                  text3: 'React Native App Development Services'),
              ReactNativeContent(),
              ReactNativeExplain(),
              Question(
                  question: question,
                  que: 'Our React Native Development Services'),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 55.0, right: 15.0),
                        child: Text(
                          'Why Choose the Kretoss Technology for Your React Native App Development Services?',
                          textScaleFactor: 1.2,
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff292930)),
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
              Talk(),
              Top(
                text:
                    'Top Industries We Serve Our React Native App Development Services',
                text2:
                    'Kretoss Technology has developed React Native App for a variety of market industries including finance apps, medical health & fitness apps, and many more. We also have an expert React Native App Development team that is working on cutting-edge technologies and tools.',
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
