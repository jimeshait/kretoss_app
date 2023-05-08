import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyLogo extends StatefulWidget {
  CompanyLogo({super.key});

  @override
  State<CompanyLogo> createState() => _CompanyLogoState();
}

class _CompanyLogoState extends State<CompanyLogo> {
  List logo = [
    {
      'image': 'https://kretoss.com/wp-content/uploads/2022/05/gtilogo.png',
      'image1': 'https://kretoss.com/wp-content/uploads/2022/05/frogig-1.png'
    },
    {
      'image': 'https://kretoss.com/wp-content/uploads/2022/05/tage.png',
      'image1': 'https://kretoss.com/wp-content/uploads/2022/05/fora.png'
    },
    {
      'image': 'https://kretoss.com/wp-content/uploads/2022/05/vacu.png',
      'image1': 'https://kretoss.com/wp-content/uploads/2022/05/rei.png'
    },
    {
      'image': 'https://kretoss.com/wp-content/uploads/2022/05/kt.png',
      'image1': 'https://kretoss.com/wp-content/uploads/2022/05/ate.png'
    },
  ];

  final PageController _controller = PageController(initialPage: 0);

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 795,
      width: double.maxFinite,
      color: Color(0xff27272E),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 15.0, right: 15.0),
            child: Text(
              'Top Web and Mobile Application Development Company',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                color: Color(0xffC75C6F),
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
            child: Text(
              'We\'ve built solutions for...',
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 25.0, bottom: 35.0),
          //   child: GridView.builder(
          //     shrinkWrap: true,
          //     physics: ScrollPhysics(),
          //     itemCount: logo.length,
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         crossAxisSpacing: 1.0,
          //         mainAxisSpacing: 1.0,
          //         childAspectRatio: 1.5),
          //     itemBuilder: (context, index) {
          //       return Padding(
          //         padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          //         child: Container(
          //           child: Image.network(
          //             logo[index]['image'],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: double.maxFinite,
                child: PageView.builder(
                  //pageSnapping: true,
                  physics: ScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (int page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: logo.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //for (int i = 0; i < logo[index].length; i++)
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Image.network(
                            logo[index]['image'],
                            width: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Image.network(
                            logo[index]['image1'],
                            width: 150,
                            //fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: DotsIndicator(
                  dotsCount: logo.length,
                  position: activePage.toDouble(),
                  decorator: DotsDecorator(
                    activeColor: Colors.white,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
