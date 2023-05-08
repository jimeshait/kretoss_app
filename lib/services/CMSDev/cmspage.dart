import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
import '../WebDesign/skill.dart';
import 'CMSContent.dart';
import 'cms_explain.dart';

class CMSPage extends StatelessWidget {
  CMSPage({super.key});

  final question = [
    {
      'name': 'CMS Design',
    },
    {
      'name': 'CMS Development',
    },
    {
      'name': 'Customization of CMS',
    },
    {
      'name': 'CMS Integration',
    },
    {
      'name': 'CMS Migration',
    },
    {
      'name': 'Support and Maintanence for CMS',
    },
  ];

  final question1 = [
    {
      'name': 'Highly skilled and experienced developers',
    },
    {
      'name': 'Provide the industry\'s most competitive pricing',
    },
    {
      'name': 'Top-notch Project Management',
    },
    {
      'name': 'Ensures on-time delivery of a high-quality product',
    },
    {
      'name': 'Commit to all design, development, testing, SEO',
    },
    {
      'name': 'Work with clients from all over the world',
    },
    {
      'name': 'Deliver services according to clients time zones',
    },
    {
      'name': 'Experienced developers in a variety of technologies',
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
      'que': '1. What is CMS? Why Do I Need a CMS?',
      'ans':
          'The Content Management System, or CMS, is a system that lets you develop and manage your website without having any technical knowledge. It makes managing back-end tasks linked to the website’s structure easier. The CMS has the following advantages:\n• There’s no need to depend on developers to make essential changes.\n• It’s SEO-friendly, so it’ll help you rank higher in search engine results like Google.\n• Over time, regular updates and upgrades improve your website.\n• There are numerous plugins and extensions available to help you improve the functionality of your website.',
      'expand': false
    },
    {
      'que':
          '2. What makes Kretoss Technology apart from other Custom application development services companies?',
      'ans':
          'Kretoss, a Custom website development services company, has been in the industry and has worked in a wide range of industries. Our experienced professionals will take care of all of your complicated requirements and give you a lot of the best Custom website development services offered. Collaborate with Kretoss, a CMS web development services company, and then sit back and watch your dreams start flying.',
      'expand': false
    },
    {
      'que':
          '3. How long will it take you to develop a Custom website for my business?',
      'ans':
          'The project’s timeline is determined by the technology used, the complexity of your needs and requirement, the project’s size, and the number of professionals involved. Contact our experts for an almost-exact timeline for your Custom development.',
      'expand': false
    },
    {
      'que': '4. What Kinds of After-Sale Services Do You Provide?',
      'ans':
          'Kretoss continues to help its clients even after the project is completed. If you have any issues in the future, our professionals can handle them right away. We can help you add additional functionality to your CMS and fulfill your business requirements as an add-on.',
      'expand': false
    },
    {
      'que':
          '5. Can you help me in upgrading my current Custom solution to the latest technology?',
      'ans':
          'Definitely! Use our CMS migration services to upgrade your current CMS platform to the latest technologies. As a result, you’ll be able to give a better user experience and attract them. Trust our Custom website development services to assist you in creating superior custom solutions for your business.',
      'expand': false
    },
    {
      'que': '6. Do you offer CMS customization services?',
      'ans':
          'Yes! Our experienced developers, designers, and testers can help in creating complete custom CMS solutions from the ground up. Our CMS customization services will assist you in reaching your business goals while also providing outstanding results and user experience. Kretoss Technology, a CMS web app development company, will work together to develop end-to-end unique solutions that will help you stay ahead of the competition and grow your business.',
      'expand': false
    },
    {
      'que':
          '7. For Custom web development, what software development process do you use?',
      'ans':
          'Kretoss Technology, a Custom website development company, uses industry-standard software development techniques. Depending on your project requirements, we use Agile, waterfall, iterative, and other methodologies. We prefer the Agile technique because it allows us and our clients to collaborate, manage runtime requirements, and create high-quality solutions.',
      'expand': false
    },
    {
      'que': '8. Can I communicate directly with the CMS developers?',
      'ans':
          'Definitely! You can communicate directly with your CMS team and share your concerns, questions, or new requirements. Our developers will examine and offer you a solution that matches your requirements. You can use  Google Meet, Skype, Zoom, or Microsoft Teams to communicate with our developers.',
      'expand': false
    },
    {
      'que':
          '9. What are your Custom support and maintenance services for my projects?',
      'ans':
          'Kretoss Technology, a top Custom web development services company, will give you maintenance, timely updates, and support in addition to development.',
      'expand': false
    },
    {
      'que': '10. How do you keep track of the project\'s source code?',
      'ans':
          'To handle our source code and version control, we use cutting-edge solutions like Github and Bitbucket. We offer high-quality Custom web development services with full version control to protect the source code.',
      'expand': false
    },
    {
      'que': '11. What project management tools do you use?',
      'ans':
          'We use the most up-to-date tools, such as Trello, Google Apps, Github, Jire, Slack, and others, to help our employees be more efficient and perform better.',
      'expand': false
    },
    {
      'que': '12. Will I have to sign NDAs and SLAs?',
      'ans':
          'Yes, our clients sign NDAs and SLAs, which allows us to be transparent and interact with them seamlessly.',
      'expand': false
    },
    {
      'que': '13. Who will be in owner of the entire project?',
      'ans':
          'We will give you entire ownership of the project and source code after the project is completed. This will also be clearly stated in the contract that we sign.',
      'expand': false
    },
  ];

  final skill = [
    {
      'name': 'Custom Design',
      'content':
          'Our UI/UX designers have many years of experience creating designs that will attract and satisfy your website visitors or audience. We can also create custom templates for your company, complete with your logo, color scheme, and layout.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Custom Development',
      'content':
          'We can create a complete website for your business using popular CMS platforms like WordPress, Shopify, OpenCart, and Magento. We\'ll handle all parts of CMS development, including designing, setting up layouts, and configuring the framework\'s backend.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Customization of CMS',
      'content':
          'We provide custom CMS development services, including structural changes to your current CMS platform. We have experts who can update the style, layout, and dashboard section, or create customized add-ons for your CMS to match your requirements.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'CMS Integration',
      'content':
          'Do you plan to combine your CMS with another website or platform? That is something we can help you with. Our experts can create safe links to your old systems and guarantee that data flows smoothly between them.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'CMS Migration',
      'content':
          'By migrating hundreds of sites to a variety of CMS systems, we\'ve definitely saved problems and sleepless nights. The good news is that migrating to a new CMS could be simple. Now all you have to do is lower the risks. Our CMS migration services are designed to help you avoid common issues and build a solid foundation that prioritizes SEO performance, content marketing, user experience, and digital agility.',
      'image': 'assets/images/Mobile-features.png'
    },
    {
      'name': 'Support and Maintanence for CMS',
      'content':
          'You\'ll need to manage your CMS after you\'ve created it and make sure it doesn\'t go down at any point. That\'s when an experienced CMS development company like ours comes in handy. Whether you want to improve the security of your CMS, change the layout, or add plugins, our professionals can help you.',
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
                  text3: 'Custom Website Development Services'),
              CMSContent(),
              CMSExplain(),
              Question(
                  question: question, que: 'Our Custom Development Services'),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 55.0, right: 15.0),
                        child: Text(
                          'Understand Our Custom Website Development Services',
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
              Question(
                  question: question1,
                  que:
                      'Why Should You Choose Kretoss Technology for CMS Development?'),
              Talk(),
              Top(
                text: 'Top Industries We Serve our Custom Development Services',
                text2:
                    'Kretoss Technology has designed and developed Custom Websites for various market industries including finance, medical health & fitness, and for many more following industries. We also have an expert CMS Development Services team that is working on cutting-edge technologies and tools.',
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
