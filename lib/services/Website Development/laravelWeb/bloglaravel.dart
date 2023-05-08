import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/blogs/blog_content.dart';
import '../../../blogs/Blog_Construct/blog_1.dart';
import '../../../blogs/blog_page.dart';

class BlogLaravel extends StatelessWidget {
  BlogLaravel({super.key});

  // List blog = [
  //   {
  //     'image':
  //         'https://kretoss.com/wp-content/uploads/2023/03/laravel-web-development-services-for-startups-comprehensive-guide.png',
  //     'date': 'March 7, 2023',
  //     'title':
  //         'Laravel Web Development Services for Startups: Comprehensive Guide',
  //     'content':
  //         'Looking for Laravel web development services for your startup? Our comprehensive guide covers everything you need to know to get started.'
  //   },
  //   {
  //     'image':
  //         'https://kretoss.com/wp-content/uploads/2023/01/laravel-web-development-services-in-usa-uk-australia.png',
  //     'date': 'January 5, 2023',
  //     'title': 'Top 7 Advantages of Laravel Web Development Services',
  //     'content':
  //         'Read Top 7 Advantages of Laravel Web Development Services. The Laravel Framework is more advanced than other PHP frameworks.'
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 1000,
      // width: 500,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: Text(
              'Related Blogs',
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff292930)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 12.0, left: 15, right: 15),
            child: Container(
              // height: 526,
              // width: 550,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Color(0xffc1c1c1))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //if (index == 3 || index == 15)
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.network(
                          blog[3].image,
                        ),
                      ),
                    ),
                  ),
                  //if (index == 3 || index == 15)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                    child: Row(
                      children: [
                        //if (index == 3 || index == 15)
                        Text(
                          blog[3].date,
                          style: GoogleFonts.sourceSansPro(
                              color: Color(0xff696969)),
                        ),
                        //if (index == 3 || index == 15)
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: CircleAvatar(
                            radius: 4,
                            foregroundColor: Color(0xff696969),
                            backgroundColor: Color(0xff696969),
                          ),
                        ),
                        //if (index == 3 || index == 15)
                        Text('to read',
                            style: GoogleFonts.sourceSansPro(
                                color: Color(0xff696969))),
                      ],
                    ),
                  ),
                  //if (index == 3 || index == 15)
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 20.0, top: 20.0),
                    child: Text(
                      blog[3].title,
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Color(0xff292930)),
                    ),
                  ),
                  //if (index == 3 || index == 15)
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 20.0, top: 13.0),
                    child: Text(
                      blog[3].content,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 17, color: Color(0xff404040)),
                    ),
                  ),
                  //if (index == 3 || index == 15)
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 20.0, top: 30.0, bottom: 25.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Blog_1(
                                      blog: blog,
                                      id: blog[3].id,
                                      select: 3,
                                    )));
                        print('hi');
                        //print(index);
                        print(blog.length);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //if (index == 3 || index == 15)
                          Text(
                            'Read More',
                            style: GoogleFonts.sourceSansPro(
                                color: Color(0xff4169e1), fontSize: 16),
                          ),
                          //if (index == 3 || index == 15)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3.0),
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xff4169e1),
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 15.0, bottom: 55.0, left: 15, right: 15),
            child: Container(
              // height: 510,
              // width: 550,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Color(0xffc1c1c1))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.network(
                          blog[15].image,
                        ),
                      ),
                    ),
                  ),

                  //if (index == 3 || index == 15)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                    child: Row(
                      children: [
                        //if (index == 3 || index == 15)
                        Text(
                          blog[15].date,
                          style: GoogleFonts.sourceSansPro(
                              color: Color(0xff696969)),
                        ),
                        //if (index == 3 || index == 15)
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: CircleAvatar(
                            radius: 4,
                            foregroundColor: Color(0xff696969),
                            backgroundColor: Color(0xff696969),
                          ),
                        ),
                        //if (index == 3 || index == 15)
                        Text('to read',
                            style: GoogleFonts.sourceSansPro(
                                color: Color(0xff696969))),
                      ],
                    ),
                  ),
                  //if (index == 3 || index == 15)
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 20.0, top: 20.0),
                    child: Text(
                      blog[15].title,
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Color(0xff292930)),
                    ),
                  ),
                  //if (index == 3 || index == 15)
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 20.0, top: 13.0),
                    child: Text(
                      blog[15].content,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 17, height: 1.5, color: Color(0xff404040)),
                    ),
                  ),
                  //if (index == 3 || index == 15)
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 20.0, top: 30.0, bottom: 25.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Blog_1(
                                      blog: blog,
                                      id: blog[15].id,
                                      select: 15,
                                    )));
                        print('hi');
                        //print(index);
                        print(blog.length);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //if (index == 3 || index == 15)
                          Text(
                            'Read More',
                            style: GoogleFonts.sourceSansPro(
                                color: Color(0xff0d6efd), fontSize: 16),
                          ),
                          //if (index == 3 || index == 15)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3.0),
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xff0d6efd),
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 55.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      // height: 55,
                      // width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff5956e9)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Blog_Page()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              'View More Blogs',
                              style: GoogleFonts.sourceSansPro(fontSize: 19),
                            ),
                          )))),
            ),
          ),
        ],
      ),
    );
  }
}
