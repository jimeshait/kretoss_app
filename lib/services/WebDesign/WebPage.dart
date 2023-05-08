import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/services/WebDesign/Web_explain.dart';
import 'package:kretoss_webapp/services/WebDesign/skill.dart';
import '../../appbartop.dart';
import '../../bottombar.dart';
import '../../drawer/drawer.dart';
import '../../estimate_project.dart';
import '../MobileApp/freqque.dart';
import '../MobileApp/question.dart';
import '../MobileApp/service_path.dart';
import '../MobileApp/talk.dart';
import '../MobileApp/top.dart';
import 'Web_content.dart';

class WebPage extends StatelessWidget {
  WebPage({super.key});

  final question = [
    {
      'name': 'Responsive Web Design',
    },
    {
      'name': 'Ecommerce Web Design',
    },
    {
      'name': 'Corporate Web Design',
    },
    {
      'name': 'Custom Web Design',
    },
    {
      'name': 'Landing Page Design',
    },
    {
      'name': 'Wireframing Web Design',
    },
    {
      'name': 'Graphics Design',
    },
    {
      'name': 'Blog Website Design',
    },
    {
      'name': 'Logo Design',
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
      'que': '1. When did you start providing Custom Web Design Services?',
      'ans':
          'For over 8 years, we’ve been providing custom website design services to our clients.',
      'expand': false
    },
    {
      'que': '2. Will I be able to get my website ownership?',
      'ans':
          'We believe that the right of ownership is an essential component of project management, as it ensures that each project we work on is fully owned by the clients.',
      'expand': false
    },
    {
      'que': '3. How much would your custom web design services cost me?',
      'ans':
          'The cost of creating a website is determined by a number of factors. We created a website based on client requirements and the duration that you will be working with us.',
      'expand': false
    },
    {
      'que': '4. What technologies are used in web application development?',
      'ans':
          'We have access to a variety of cutting-edge technologies. Our developers select the appropriate technology based on the project requirements. For full-stack projects, we leverage PHP, Laravel, CodeIgniter, Angular, React, Vue.js, HTML5, and Java. We use WordPress, Drupal, Magento, Shopify, and other CMS and eCommerce platforms for our projects. If you have questions concerning the technology needed for your project, please contact us. We’ll go over the primary technologies needed to bring your concept to life.',
      'expand': false
    },
    {
      'que': '5. Will my website be seen in the search engine results?',
      'ans':
          'Yes, search engines will receive your website with a friendly gesture. Every website we create is SEO-friendly.',
      'expand': false
    },
    {
      'que':
          '6. Will I be responsible for any additional costs after the service is completed?',
      'ans':
          'No, we make it a point to discuss our terms right at the start of the process. We can work more quickly and effectively as a result of this.',
      'expand': false
    },
    {
      'que': '7. Is there a non-disclosure agreement?',
      'ans':
          'Yes. We strictly respect the NDA (Non-Disclosure Agreement) policy as a reputable web development company. We will sign agreements with you before beginning your project and will keep your data confidential throughout and after it is completed. Your information and ideas are secure with us.',
      'expand': false
    },
  ];

  final skill = [
    {
      'name': 'Experienced and Skilled Web Designer',
      'content':
          'When it comes to the website, we are not lying when we say that visual is important. For your website, we provide outstanding, visually appealing content.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Customer Service is a Top Priority',
      'content':
          'We put a high priority on our clients\' feedback. We\'ll start by asking for your feedback on the project. We will personalize features based on your preferences.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Organized Project Plan',
      'content':
          'We create a specific time-bound project plan after we have reviewed and examined all of the website aspects that the client requires. As a result, your website will be ready as soon as possible.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Quick Examination',
      'content':
          'We examine everything that goes live as an experienced website design business. We monitor the website\'s functionality on a regular basis.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Reputation',
      'content':
          'We have a reputable name in the business as a web design company in USA, and India. We can deliver great website designs for our clients without any design issues or technical errors in the performance without the best experience we\'ve acquired through years of hard work.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Extensive Knowledge and Understanding',
      'content':
          'We\'re growing better at working with your business goals with each step ahead. Our clients put their faith in us because of our extensive industry experien',
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
                  text3: 'Custom Web Design Services'),
              WebContent(),
              WebExplain(),
              Question(
                  question: question,
                  que: 'We Provide a Full Range of Website Design Services'),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 55.0, right: 15.0),
                        child: Text(
                          'Why Choose Custom Website Design Services from Kretoss Technology?',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 25.0, right: 15.0),
                        child: Text(
                            'Our website design services are well-known in the market.',
                            textScaleFactor: 1.2,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 15,
                              color: Color(0xff404040),
                              height: 1.5,
                            )),
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
                text: 'Top Industries We Serve our Web Design Services',
                text2:
                    'Kretoss Technology has developed Websites for various market industries including finance apps, medical health & fitness apps, and many more. We also have an expert Web Design team that is working on cutting-edge technologies and tools.',
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
