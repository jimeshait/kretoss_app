import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/WorkProcess/workprocess_page.dart';
import 'package:url_launcher/url_launcher.dart';

import 'About/about_Page.dart';
import 'Contact/contact_page.dart';
import 'Hiring/hiring_page.dart';
import 'Portfolio/portfolio.dart';
import 'blogs/blog_page.dart';
import 'services/CMSDev/cmspage.dart';
import 'services/MobileApp/MobilePage.dart';
import 'services/WebDesign/WebPage.dart';
import 'services/Website Development/WebsiteDevPage.dart';

class BottomBar extends StatelessWidget {
  List bottom = [
    {
      'image': 'assets/images/usa-flag-footer.png',
      'detail': '(+1) 815 570 9603'
    },
    {
      'image': 'assets/images/india-flag-footer.png',
      'detail': '+91 96879 90806'
    },
    {
      'image': 'assets/images/email-icon-footer.png',
      'detail': 'service@kretoss.in'
    },
    {'image': 'assets/images/footer_skype_icon.png', 'detail': 'Skype'},
  ];
  BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 1325,
      // width: 500,
      color: Color(0xffFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 15.0, bottom: 10),
            child: SvgPicture.asset(
              'assets/svg/kretoss.svg',
              height: 40,
              width: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
            child: Text(
              'Kretoss technology is the best Web and App Development Company that expands its services all over the world. With Decades of experience, We offer you high-quality, requirement-specific, and interactive Web development services. We always satisfy our clients with our services by utilizing technology in the best innovative manner.',
              textScaleFactor: 1.2,
              textAlign: TextAlign.justify,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 15, color: Color(0xff404040), height: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15.0),
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: bottom.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Image.asset(
                      bottom[index]['image'],
                      height: 27,
                      width: 27,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        bottom[index]['detail'],
                        textScaleFactor: 1.2,
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Text(
                  'Services',
                  textScaleFactor: 1.2,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292930)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MobilePage()));
                  },
                  onHover: (value) {},
                  child: Text(
                    'Mobile App Development',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebsiteDevPage()));
                  },
                  onHover: (value) {},
                  child: Text(
                    'Website Development',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WebPage()));
                  },
                  onHover: (value) {},
                  child: Text(
                    'Web Design',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CMSPage()));
                  },
                  onHover: (value) {},
                  child: Text(
                    'CMS Development',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {},
                  child: Text(
                    'Digital Marketing',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {},
                  child: Text(
                    'UX/UI',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Text(
                  'Company',
                  textScaleFactor: 1.2,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292930)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutPage()));
                  },
                  onHover: (value) {},
                  child: Text(
                    'About Us',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WorkProcess_Page()));
                  },
                  onHover: (value) {},
                  child: Text(
                    'Work Process',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Portfolio(
                                  isAppBar: true,
                                )));
                  },
                  onHover: (value) {},
                  child: Text(
                    'Portfolio',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Blog_Page()));
                  },
                  onHover: (value) {},
                  child: Text(
                    'Blogs',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HiringPage()));
                  },
                  onHover: (value) {},
                  child: Text(
                    'Hiring',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Contact_Page(
                                isAppBar: true,
                              )),
                    );
                  },
                  onHover: (value) {},
                  child: Text(
                    'Contact Us',
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff525260)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Text(
                  'The Cream of the Crop',
                  textScaleFactor: 1.2,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292930)),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                    child: Image.network(
                      'https://kretoss.com/wp-content/uploads/2022/05/Google-Review.png',
                      height: 42,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 5.0),
                    child: Image.network(
                      'https://kretoss.com/wp-content/uploads/2022/05/Sitejabber_logo.png',
                      width: 230,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 15),
                    child: Image.network(
                      'https://kretoss.com/wp-content/uploads/2022/05/Trustpilot_logo.png',
                      height: 33,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text('REVIEWED ON',
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 12, color: Color(0xff696969))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 9.0),
                              child: SvgPicture.asset(
                                'assets/svg/review.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                direction: Axis.horizontal,
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    SvgPicture.asset(
                                      fit: BoxFit.cover,
                                      height: 18,
                                      width: 20,
                                      'assets/svg/star.svg',
                                      color: Color(0xffff3d2e),
                                    ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 4.0, top: 5.0),
                                child: Text('6 REVIEWS'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Divider(
            //color: Color(0xff696969),
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: Center(
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () async {
                      var url = Uri.parse(
                          'https://www.facebook.com/kretosstechnology/');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image.asset(
                      'assets/images/facebook.png',
                      height: 20,
                      width: 20,
                      color: Color(0xff757589),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: InkWell(
                      onTap: () async {
                        var url = Uri.parse(
                            'https://www.instagram.com/kretoss_technology_/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Image.asset(
                        'assets/images/instagram.png',
                        height: 20,
                        width: 20,
                        color: Color(0xff757589),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: InkWell(
                      onTap: () async {
                        var url = Uri.parse(
                            'https://www.linkedin.com/company/kretoss/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Image.asset(
                        'assets/images/linkedin.png',
                        height: 20,
                        width: 20,
                        color: Color(0xff757589),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: InkWell(
                      onTap: () async {
                        var url =
                            Uri.parse('https://twitter.com/KretossTechnol3');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Image.asset(
                        'assets/images/twitter.png',
                        height: 20,
                        width: 20,
                        color: Color(0xff757589),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: InkWell(
                      onTap: () async {
                        var url = Uri.parse(
                            'https://www.pinterest.com/kretosstechnology/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Image.asset(
                        'assets/images/pinterest.png',
                        height: 20,
                        width: 20,
                        color: Color(0xff757589),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16.0),
              child: Image.network(
                  'https://images.dmca.com/Badges/dmca_protected_sml_120l.png?ID=0a41523e-7297-455f-a271-a3a85dcd9d4b'),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 25.0),
            child: Text(
              'Copyright © 2023 Kretoss Technology. All Rights Reserved.',
              textAlign: TextAlign.center,
              style: GoogleFonts.sourceSansPro(
                height: 1.5,
                fontSize: 15,
                color: Color(0xff757589),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
