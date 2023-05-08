import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:kretoss_webapp/Packages/package_page.dart';
import 'package:kretoss_webapp/Portfolio/portfolio.dart';
import 'package:kretoss_webapp/blogs/blog_page.dart';
import 'package:kretoss_webapp/drawer/drawerdata.dart';
import 'package:kretoss_webapp/drawer/servicedrawer.dart';
import 'package:kretoss_webapp/firstPage.dart';
import 'package:kretoss_webapp/main.dart';
import 'package:kretoss_webapp/services/service_page.dart';

import '../About/about_Page.dart';
import '../Contact/contact_page.dart';
import '../Hiring/hiring_page.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  bool isExpanded = false;
  bool isSelect = false;
  bool isSelect1 = false;
  bool isSelect2 = false;
  bool isSelect3 = false;
  bool isSelect4 = false;
  bool isSelect5 = false;
  bool isSelect6 = false;
  bool isSelect7 = false;
  int press = 0;
  void _onListItemTap(BuildContext context, int index) {
    setState(() {
      press = index;
    });
    Navigator.of(context).pop();
    drawerData navigationProvider =
        Provider.of<drawerData>(context, listen: false);
    navigationProvider.updateTemp(index);
  }

  List drawer = [
    {
      'name': 'Home',
      'navigate': MyHome(),
      'isexpanded': false,
      'isExpanded': false
    },
    {
      'name': 'About',
      'navigate': AboutPage(),
      'isexpanded': false,
      'isExpanded': false
    },
    {
      'name': 'Services',
      'navigate': Service_Page(
        isAppbar: true,
      ),
      'isexpanded': true,
      'isExpanded': false
    },
    {
      'name': 'Portfolio',
      'navigate': Portfolio(
        isAppBar: true,
      ),
      'isexpanded': false,
      'isExpanded': false
    },
    {
      'name': 'Hiring',
      'navigate': HiringPage(),
      'isexpanded': false,
      'isExpanded': false
    },
    {
      'name': 'Blogs',
      'navigate': Blog_Page(),
      'isexpanded': false,
      'isExpanded': false
    },
    {
      'name': 'Packages',
      'navigate': Package_Page(),
      'isexpanded': false,
      'isExpanded': false
    },
    {
      'name': 'Contact',
      'navigate': Contact_Page(
        isAppBar: true,
      ),
      'isexpanded': false,
      'isExpanded': false
    }
  ];
  @override
  Widget build(BuildContext context) {
    drawerData provider = Provider.of<drawerData>(context);
    press = provider.getPageIndex();
    return Drawer(
      backgroundColor: Colors.white,
      //width: 10,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              //direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => MyHome()));
                    },
                    child: SvgPicture.asset(
                      'assets/svg/kretoss.svg',
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/close.png',
                      height: 20,
                      width: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            // ListView.builder(
            //   itemCount: drawer.length,
            //   shrinkWrap: true,
            //   physics: ScrollPhysics(),
            //   itemBuilder: (context, index) {
            //     return Padding(
            //       padding: const EdgeInsets.only(top: 10.0, left: 10.0),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           InkWell(
            //             //selected: press == index,
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   drawer[index]['name'],
            //                   style: GoogleFonts.sourceSansPro(
            //                       color: (press == index)
            //                           ? Color(0xff4169e1)
            //                           : Color(0xff000000),
            //                       fontSize: 15),
            //                 ),
            //                 //if (press == 2)
            //                 if (drawer[index]['isexpanded'] == true)
            //                   Padding(
            //                     padding: const EdgeInsets.only(right: 10.0),
            //                     child: GestureDetector(
            //                       child: const Icon(
            //                         Icons.expand_more,
            //                       ),
            //                       onTap: () {
            //                         setState(() {
            //                           drawer[press]['isExpanded'] =
            //                               !drawer[press]['isExpanded'];
            //                           print(drawer[press]['isExpanded']);
            //                         });
            //                       },
            //                     ),
            //                   ),
            //               ],
            //             ),
            //             onTap: () {
            //               _onListItemTap(context, index);
            //               (press == 0)
            //                   ? Navigator.pushReplacement(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) =>
            //                               drawer[0]['navigate']))
            //                   : Navigator.pushAndRemoveUntil(
            //                       context,
            //                       MaterialPageRoute(
            //                         builder: (context) =>
            //                             drawer[press]['navigate'],
            //                         //settings: RouteSettings(name: '/aboutPage')
            //                       ),
            //                       ModalRoute.withName('/'),
            //                     ).then((result) {
            //                       print(MaterialPageRoute(
            //                           builder: (context) =>
            //                               drawer[press]['navigate']));
            //                       if (MaterialPageRoute(
            //                               builder: (context) =>
            //                                   drawer[press]['navigate']) ==
            //                           drawer[press]['navigate']) {
            //                         print('hi');
            //                         Navigator.pop(context);
            //                       }
            //                     });
            //             },
            //             // trailing: (drawer[press]['isexpanded'] == true)
            //             //     ? GestureDetector(
            //             //         child: const Icon(
            //             //           Icons.expand_more,
            //             //         ),
            //             //         onTap: () {
            //             //           setState(() {
            //             //             isExpanded = !isExpanded;
            //             //           });
            //             //         },
            //             //       )
            //             //     : null
            //           ),
            //           Divider(
            //             endIndent: 10,
            //           ),
            //           if (press == 2)
            //             if (drawer[index]['isExpanded'] == true) ServiceDrawer()
            //         ],
            //       ),
            //     );
            //   },
            // ),
            ListTile(
              title: Text(
                'Home',
                style: GoogleFonts.sourceSansPro(
                    color: (isSelect == true)
                        ? Color(0xff4169e1)
                        : Color(0xff000000),
                    fontSize: 15),
              ),
              onTap: () {
                setState(() {
                  isSelect = !isSelect;
                });
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
              },
            ),
            const Divider(),
            ListTile(
              title: Text(
                'About',
                style: GoogleFonts.sourceSansPro(
                    color: (isSelect1 == true)
                        ? Color(0xff4169e1)
                        : Color(0xff000000),
                    fontSize: 15),
              ),
              onTap: () {
                setState(() {
                  isSelect1 = !isSelect1;
                });
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AboutPage(),
                      settings: RouteSettings(name: '/aboutPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => AboutPage()));
                  if (MaterialPageRoute(builder: (context) => AboutPage()) ==
                      AboutPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => AboutPage(),
                //       settings: RouteSettings(name: '/aboutPage')),
                //   (route) {
                //     print(route.settings.name);
                //     // Check if the current route is the same as the route we're trying to pop
                //     if (route.settings.name == '/aboutPage') {
                //       // Pop the route if it's the same
                //       return true;
                //     } else {
                //       // Continue until we reach the route we're trying to pop
                //       return false;
                //     }
                //   },
                //);
              },
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Services',
                style: GoogleFonts.sourceSansPro(
                    color: (isSelect2 == true)
                        ? Color(0xff4169e1)
                        : Color(0xff000000),
                    fontSize: 15),
              ),
              onTap: () {
                setState(() {
                  isSelect2 = !isSelect2;
                });
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Service_Page(
                            isAppbar: true,
                          ),
                      settings: RouteSettings(name: '/servicePage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(
                      builder: (context) => Service_Page(
                            isAppbar: true,
                          )));
                  if (MaterialPageRoute(
                          builder: (context) => Service_Page(
                                isAppbar: true,
                              )) ==
                      Service_Page(
                        isAppbar: true,
                      )) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
              trailing: GestureDetector(
                child: const Icon(
                  Icons.expand_more,
                ),
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
              ),
            ),
            if (isExpanded == true) const ServiceDrawer(),
            // else
            const Divider(),
            ListTile(
              title: Text(
                'Portfolio',
                style: GoogleFonts.sourceSansPro(
                    color: (isSelect3 == true)
                        ? Color(0xff4169e1)
                        : Color(0xff000000),
                    fontSize: 15),
              ),
              onTap: () {
                setState(() {
                  isSelect3 = !isSelect3;
                });
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Portfolio(
                            isAppBar: true,
                          ),
                      settings: RouteSettings(name: '/portfolioPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(
                      builder: (context) => Portfolio(
                            isAppBar: true,
                          )));
                  if (MaterialPageRoute(
                          builder: (context) => Portfolio(
                                isAppBar: true,
                              )) ==
                      Portfolio(
                        isAppBar: true,
                      )) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Hiring',
                style: GoogleFonts.sourceSansPro(
                    color: (isSelect4 == true)
                        ? Color(0xff4169e1)
                        : Color(0xff000000),
                    fontSize: 15),
              ),
              onTap: () {
                setState(() {
                  isSelect4 = !isSelect4;
                });
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HiringPage(),
                      settings: RouteSettings(name: '/hiringPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => HiringPage()));
                  if (MaterialPageRoute(builder: (context) => HiringPage()) ==
                      HiringPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Blogs',
                style: GoogleFonts.sourceSansPro(
                    color: (isSelect5 == true)
                        ? Color(0xff4169e1)
                        : Color(0xff000000),
                    fontSize: 15),
              ),
              onTap: () {
                setState(() {
                  isSelect5 = !isSelect5;
                });
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Blog_Page(),
                      settings: RouteSettings(name: '/blogPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => Blog_Page()));
                  if (MaterialPageRoute(builder: (context) => Blog_Page()) ==
                      AboutPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Packages',
                style: GoogleFonts.sourceSansPro(
                    color: (isSelect6 == true)
                        ? Color(0xff4169e1)
                        : Color(0xff000000),
                    fontSize: 15),
              ),
              onTap: () {
                setState(() {
                  isSelect6 = !isSelect6;
                });
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Package_Page(),
                      settings: RouteSettings(name: '/packagePage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(
                      MaterialPageRoute(builder: (context) => Package_Page()));
                  if (MaterialPageRoute(builder: (context) => Package_Page()) ==
                      Package_Page()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Contact',
                style: GoogleFonts.sourceSansPro(
                    color: (isSelect7 == true)
                        ? Color(0xff4169e1)
                        : Color(0xff000000),
                    fontSize: 15),
              ),
              onTap: () {
                setState(() {
                  isSelect7 = !isSelect7;
                });
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Contact_Page(
                            isAppBar: true,
                          ),
                      settings: RouteSettings(name: '/contactPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(
                      builder: (context) => Contact_Page(
                            isAppBar: true,
                          )));
                  if (MaterialPageRoute(
                          builder: (context) => Contact_Page(
                                isAppBar: true,
                              )) ==
                      Contact_Page(
                        isAppBar: true,
                      )) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                        // height: 55,
                        width: 400,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xff5956e9)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Contact_Page(
                                            isAppBar: true,
                                          )));
                            },
                            child: Padding(
                              padding: EdgeInsets.all(17.0),
                              child: Text(
                                'Get Free Quote',
                                style: GoogleFonts.sourceSansPro(fontSize: 19),
                              ),
                            )))),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
          ],
        ),
      ),
    );
  }
}
