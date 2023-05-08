import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CMSExplain extends StatelessWidget {
  CMSExplain({super.key});

  List cms = [
    {
      'name':
          'Because your website is completely customized, you will have a distinctive style. Nobody else’s website design will be exactly like yours. Making your brand stand out in a good way, is a major advantage.\n'
    },
    {
      'name':
          'You will be able to establish your own online brand if your website is designed just for you.\n'
    },
    {
      'name':
          'The ability to add elements that are required for your clients to have in order to use your services may also be ensured with custom websites.\n'
    },
    {
      'name':
          'Custom-designed websites are far more SEO friendly and ideally suited for online marketing, allowing them to beat generic free websites in the search engine rankings.\n'
    },
    {
      'name':
          'With a custom website, you can completely personalize your online presence. Additionally, it makes your website easier for clients and other visitors to remember.\n'
    },
    {
      'name':
          'Custom web design is ideal for developing a website that properly communicates the unique brand of a company.\n'
    },
    {
      'name':
          'You will be able to consider scalability. This implies that your website can grow along with your company without worry or difficulty.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 500,
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 55.0, left: 15.0, right: 15.0),
              child: Text(
                'Best CMS Custom Website Development Services',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'Customers who require top-notch structures and want their website to look more professional may consider custom website development services.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text: 'Kretoss Technology is a one-stop solution and ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Top-notch CMS Development company',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' for developing custom websites. We can develop the website on your requirements. We are an accomplished and perfected ',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                    TextSpan(
                        text: 'custom website development services company',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' with extensive knowledge of all aspects of website creation, including designs, programming, movement, layout, convenience, and much more.'),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
                child: Text(
                    'Managing your website becomes significantly easier with a CMS that is customized to your business needs!',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15,
                        color: Color(0xff404040),
                        height: 1.5,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                  'We provide high-quality Custom Website Development Services at affordable prices. What makes us apart from other CMS development companies in USA and India is that we never take shortcuts on quality. We may make arrangements that tailor to your specific needs and budget.',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    height: 1.5,
                    color: Color(0xff404040),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text: 'If you’re looking for a professional and the ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'best Custom CMS Website Development Company in USA',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' , India, and anywhere across the globe; we can help you with unique and outstanding website designs and developments. Our clients all over the world benefit from our clean coding and SEO-Friendly web pages. For custom website development, we never use formats. ',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                textScaleFactor: 1.2,
                text: TextSpan(
                  text: 'We also offer ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    color: Color(0xff404040),
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Flutter Cross Platform App Development',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ', React Native App Development, ',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                    TextSpan(
                        text: 'AngularJS Web Development Services',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: Color(0xff4169e1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ', ReactJS Development, PHP Web Development, Laravel Development, Node JS Development, Shopify Development, WordPress Development, and many more development services.',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xff404040))),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
              child: Text(
                'How a Custom Website Design can benefit your company?',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0, top: 25.0),
              child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: cms.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\u2022',
                          style: GoogleFonts.sourceSansPro(fontSize: 20),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            cms[index]['name'],
                            textScaleFactor: 1.2,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 15, color: Color(0xff404040)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
    );
  }
}
