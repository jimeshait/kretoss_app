import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Review extends StatefulWidget {
  Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  List review = [
    {
      'statement':
          'Kretoss Technology helped develop the mobile app and did an incredible job. They are incredibly knowledgeable and were able to pivot and build new features. Really enjoy working with this team',
      'name': 'Kartik',
      'post': 'CEO & Founder',
      'image': 'https://kretoss.com/wp-content/uploads/2022/05/trustpilot.png'
    },
    {
      'statement':
          'Ankur and his team are the best developers I have ever worked with. I am very impressed by the quality of work, communication skills, and deliverables. Would highly recommend to anyone looking to develop an app or website',
      'name': 'Upwork',
      'post': 'Chirstine',
      'image':
          'https://kretoss.com/wp-content/uploads/2022/07/upwork-review.png'
    },
    {
      'statement':
          'Ankur is a fantastic designer and developer! His work ethic is impeccable, his communication is top of the line, and the work he delivers is out of this world! I have worked with plenty of developers in the past and Ankur surpassed them all. I will continue to work with him on many projects and will definitely recommend him to anyone looking to get some website design and development done! Excited to continue our working relationship',
      'name': 'Upwork',
      'post': 'Kelly Yoga Teacher',
      'image':
          'https://kretoss.com/wp-content/uploads/2022/07/upwork-review.png'
    },
    {
      'statement':
          'The entire team of Kretoss Technology; led by Ankur and Chintan delivered quality work on our ActiveLab app. The ReactNative app Project had several challenges and the team tackled them well. The graph functionality on our app wasn\'t available on any of the defined packages but the team wasn\'t shy of building it from scratch. The communication was on point, the team is well skilled and all deadlines were met on time. I enjoyed working with Ankur and the team and will likely have additional projects for them in future',
      'name': 'Upwork',
      'post': 'Activelab',
      'image':
          'https://kretoss.com/wp-content/uploads/2022/07/upwork-review.png'
    },
    {
      'statement':
          'Excellent team and quality of work. We\'ve been working with Kretoss technology for over 3 years and I can only say good things about the team. Definitely recommend.',
      'name': 'Martynas Jonaitis',
      'post': 'CEO & Founder',
      'image':
          'https://kretoss.com/wp-content/uploads/2022/07/google-review-post.png'
    },
    {
      'statement':
          'Ankur is one of the very best designers and coders I\'ve ever had the pleasure to work with. He and his team are extremely knowledgeable at what they do, they work fast and are always in contact with the client during the while process making it so much easier for me. I am very glad I decided to hire Kretoss Technology for my business venture, the reviews are true, they are the very best at what they do!',
      'name': 'Jorge Andre Figueredo Alves',
      'post': 'Development Head',
      'image':
          'https://kretoss.com/wp-content/uploads/2022/07/google-review-post.png'
    },
    {
      'statement':
          'Kretoss and the team showed tremendous patients and understanding towards my exact requirements. They delivered an outstanding product and we are very happy we decided to go with Kretoss. Highly recommended',
      'name': 'Basem C',
      'post': 'Project Head',
      'image': 'https://kretoss.com/wp-content/uploads/2022/05/sitejeber.jpg'
    },
    {
      'statement':
          'Ankur and his team at Kretoss did an amazing job with redesigning my website. The team is professional, approachable and very helpful at every step on the way. I will definitely return to Kretoss for my future projects',
      'name': 'Niyati',
      'post': 'Health & Wellness Coach',
      'image': 'https://kretoss.com/wp-content/uploads/2022/05/sitejeber.jpg'
    },
    {
      'statement':
          'Thank you for modernizing and successfully changing my business website, it looks great. I will be recommending you to others. Marcus',
      'name': 'Marcus B',
      'post': 'Founder',
      'image': 'https://kretoss.com/wp-content/uploads/2022/05/sitejeber.jpg'
    },
    {
      'statement':
          'Great quality and speed to deliver mobile app and website with different API integrations. Great communication as well.',
      'name': 'Joshua',
      'post': 'CEO',
      'image': 'https://kretoss.com/wp-content/uploads/2022/05/trustpilot.png'
    },
  ];

  final PageController _controller = PageController(initialPage: 0);

  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 780,
      // width: 500,
      color: Color(0xffF0F5F7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15.0, right: 15),
              child: Text(
                'What Our Customers Say',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292930)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
            child: Text(
              'Read all our customers review what are they saying about our work',
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 15, color: Color(0xff404040), height: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, bottom: 50.0, left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Material(
                  elevation: 3,
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  child: Container(
                    height: 700,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.white,
                    ),
                    child: PageView.builder(
                      physics: ScrollPhysics(),
                      controller: _controller,
                      onPageChanged: (int page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      allowImplicitScrolling: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: review.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25.0, top: 30.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    SvgPicture.asset(
                                      fit: BoxFit.cover,
                                      height: 18,
                                      width: 23,
                                      'assets/svg/star.svg',
                                      //color: Color(0xfffcb900),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 170.0),
                                    child: Image.network(
                                        'https://kretoss.com/wp-content/themes/kretoss-technology/assets/media/icon/quote-icon.png'),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, top: 20.0, right: 25.0),
                              child: ReadMoreText(
                                review[index]['statement'],
                                textAlign: TextAlign.justify,
                                colorClickableText: Color(0xff5956e9),
                                style: GoogleFonts.sourceSansPro(
                                    fontSize: 15,
                                    color: Color(0xff696969),
                                    height: 1.5),
                                textScaleFactor: 1.2,
                                trimCollapsedText: 'Read More',
                                trimExpandedText: '',
                                trimLines: 4,
                                trimMode: TrimMode.Line,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, bottom: 20.0, top: 5.0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: SizedBox(
                                    height: 50,
                                    width: 250,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipOval(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          child: Image.network(
                                            review[index]['image'],
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                review[index]['name'],
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                review[index]['post'],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: DotsIndicator(
              dotsCount: review.length,
              position: activePage.toDouble(),
              decorator: DotsDecorator(
                activeColor: Color(0xff27272E),
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
