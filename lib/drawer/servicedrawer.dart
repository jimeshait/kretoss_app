import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/drawer/cmsdrawer.dart';
import 'package:kretoss_webapp/drawer/drawerdata.dart';
import 'package:kretoss_webapp/drawer/mobiledrawer.dart';
import 'package:kretoss_webapp/drawer/webdesigndrawer.dart';
import 'package:kretoss_webapp/services/CMSDev/cmspage.dart';
import 'package:provider/provider.dart';

import '../services/MobileApp/MobilePage.dart';
import '../services/WebDesign/WebPage.dart';
import '../services/Website Development/WebsiteDevPage.dart';
import 'websitedevdrawer.dart';

class ServiceDrawer extends StatefulWidget {
  const ServiceDrawer({super.key});

  @override
  State<ServiceDrawer> createState() => _ServiceDrawerState();
}

class _ServiceDrawerState extends State<ServiceDrawer> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isSelect = false;
  bool isSelect1 = false;
  bool isSelect2 = false;
  bool isSelect3 = false;

  List drawer = [
    {
      'name': 'Mobile App Development',
      'navigate': MobilePage(),
      'isexpanded': true,
      'isExpanded': false,
      'draw': MobileDrawer(),
    },
    {
      'name': 'Web Design',
      'navigate': WebPage(),
      'isexpanded': true,
      'isExpanded': false,
      'draw': WebDesignDrawer(),
    },
    {
      'name': 'Website Development',
      'navigate': WebsiteDevPage(),
      'isexpanded': true,
      'isExpanded': false,
      'draw': WebsiteDevDrawer()
    },
    {
      'name': 'CMS Development',
      'navigate': CMSPage(),
      'isexpanded': true,
      'isExpanded': false,
      'draw': CMSDrawer()
    },
    {
      'name': 'Payment & Shipping API Integration Solutions',
      'navigate': '',
      'isexpanded': false,
      'isExpanded': false
    },
    {
      'name': 'Digital Marketing',
      'navigate': '',
      'isexpanded': false,
      'isExpanded': false
    },
    {'name': 'UX/UI', 'navigate': '', 'isexpanded': false, 'isExpanded': false}
  ];
  int press = 0;
  void _onListItemTap(BuildContext context, int index) {
    setState(() {
      press = index;
    });
    Navigator.of(context).pop();
    drawerData navigationProvider =
        Provider.of<drawerData>(context, listen: false);
    navigationProvider.updateTemp1(index);
  }

  @override
  Widget build(BuildContext context) {
    drawerData provider = Provider.of<drawerData>(context);
    press = provider.getPageIndex1();

    return Card(
        color: Colors.white,
        elevation: 5,
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Mobile App Development',
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
                  Navigator.pop(context);
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MobilePage(),
                        settings: RouteSettings(name: '/mobilePage')),
                    ModalRoute.withName('/'),
                  ).then((result) {
                    print(
                        MaterialPageRoute(builder: (context) => MobilePage()));
                    if (MaterialPageRoute(builder: (context) => MobilePage()) ==
                        MobilePage()) {
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
                      isExpanded1 = !isExpanded1;
                    });
                  },
                ),
              ),
              if (isExpanded1 == true) const MobileDrawer(),
              ListTile(
                title: Text(
                  'Web Design',
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
                        builder: (context) => WebPage(),
                        settings: RouteSettings(name: '/webPage')),
                    ModalRoute.withName('/'),
                  ).then((result) {
                    print(MaterialPageRoute(builder: (context) => WebPage()));
                    if (MaterialPageRoute(builder: (context) => WebPage()) ==
                        WebPage()) {
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
                      isExpanded2 = !isExpanded2;
                    });
                  },
                ),
              ),
              if (isExpanded2 == true) const WebDesignDrawer(),
              ListTile(
                title: Text(
                  'Website Development',
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
                        builder: (context) => WebsiteDevPage(),
                        settings: RouteSettings(name: '/websitePage')),
                    ModalRoute.withName('/'),
                  ).then((result) {
                    print(MaterialPageRoute(
                        builder: (context) => WebsiteDevPage()));
                    if (MaterialPageRoute(
                            builder: (context) => WebsiteDevPage()) ==
                        WebsiteDevPage()) {
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
                      isExpanded3 = !isExpanded3;
                    });
                  },
                ),
              ),
              if (isExpanded3 == true) const WebsiteDevDrawer(),
              ListTile(
                  title: Text(
                    'CMS Development',
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
                          builder: (context) => CMSPage(),
                          settings: RouteSettings(name: '/cmsPage')),
                      ModalRoute.withName('/'),
                    ).then((result) {
                      print(MaterialPageRoute(builder: (context) => CMSPage()));
                      if (MaterialPageRoute(builder: (context) => CMSPage()) ==
                          CMSPage()) {
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
                        isExpanded4 = !isExpanded4;
                      });
                    },
                  )),
              if (isExpanded4 == true) const CMSDrawer(),

              // ListView.builder(
              //     itemCount: drawer.length,
              //     shrinkWrap: true,
              //     physics: ScrollPhysics(),
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.only(top: 12.0, left: 10.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             InkWell(
              //               //selected: press == index,
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Expanded(
              //                     child: Text(
              //                       drawer[index]['name'],
              //                       style: GoogleFonts.sourceSansPro(
              //                           color: (press == index)
              //                               ? Color(0xff4169e1)
              //                               : Color(0xff000000),
              //                           fontSize: 15),
              //                     ),
              //                   ),
              //                   //if (press == 2)
              //                   if (drawer[index]['isexpanded'] == true)
              //                     Padding(
              //                       padding: const EdgeInsets.only(right: 10.0),
              //                       child: GestureDetector(
              //                         child: const Icon(
              //                           Icons.expand_more,
              //                         ),
              //                         onTap: () {
              //                           setState(() {
              //                             drawer[press]['isExpanded'] =
              //                                 !drawer[press]['isExpanded'];
              //                             print(drawer[press]['isExpanded']);
              //                           });
              //                         },
              //                       ),
              //                     ),
              //                 ],
              //               ),
              //               onTap: () {
              //                 _onListItemTap(context, index);
              //                 if (drawer[index]['navigate'] != null)
              //                   Navigator.pushAndRemoveUntil(
              //                     context,
              //                     MaterialPageRoute(
              //                       builder: (context) => drawer[press]['navigate'],
              //                       //settings: RouteSettings(name: '/aboutPage')
              //                     ),
              //                     ModalRoute.withName('/'),
              //                   ).then((result) {
              //                     print(MaterialPageRoute(
              //                         builder: (context) =>
              //                             drawer[press]['navigate']));
              //                     if (MaterialPageRoute(
              //                             builder: (context) =>
              //                                 drawer[press]['navigate']) ==
              //                         drawer[press]['navigate']) {
              //                       print('hi');
              //                       Navigator.pop(context);
              //                     }
              //                   });
              //               },
              //             ),
              //             Divider(
              //               endIndent: 10,
              //             ),
              //             if (press == 0 || press == 1 || press == 2 || press == 3)
              //               if (drawer[index]['isExpanded'] == true ||
              //                   drawer[index]['draw'] != null)
              //                 drawer[press]['draw']
              ListTile(
                title: Text(
                  'Payment & Shipping API Integration Solutions',
                  style: GoogleFonts.sourceSansPro(
                      color: Color(0xff000000), fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  'Digital Marketing',
                  style: GoogleFonts.sourceSansPro(
                      color: Color(0xff000000), fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  'UX/UI',
                  style: GoogleFonts.sourceSansPro(
                      color: Color(0xff000000), fontSize: 15),
                ),
              ),
            ],
          ),
        ));
  }
}
