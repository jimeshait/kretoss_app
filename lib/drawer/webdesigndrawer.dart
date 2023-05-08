import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/services/WebDesign/angularWeb/angularPage.dart';
import 'package:kretoss_webapp/services/WebDesign/responsiveWeb/responsivePage.dart';

import '../services/WebDesign/reactJSWeb/reactJSPage.dart';

class WebDesignDrawer extends StatefulWidget {
  const WebDesignDrawer({super.key});

  @override
  State<WebDesignDrawer> createState() => _WebDesignDrawerState();
}

class _WebDesignDrawerState extends State<WebDesignDrawer> {
  bool isSelect = false;
  bool isSelect1 = false;
  bool isSelect2 = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Responsive Website Design',
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
                      builder: (context) => ResponsivePage(),
                      settings: RouteSettings(name: '/responsivePage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(
                      builder: (context) => ResponsivePage()));
                  if (MaterialPageRoute(
                          builder: (context) => ResponsivePage()) ==
                      ResponsivePage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            ListTile(
              title: Text(
                'AngularJS Development',
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
                      builder: (context) => AngularPage(),
                      settings: RouteSettings(name: '/angularPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => AngularPage()));
                  if (MaterialPageRoute(builder: (context) => AngularPage()) ==
                      AngularPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            ListTile(
              title: Text(
                'ReactJS Development',
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
                      builder: (context) => ReactJSPage(),
                      settings: RouteSettings(name: '/reactJSPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => ReactJSPage()));
                  if (MaterialPageRoute(builder: (context) => ReactJSPage()) ==
                      ReactJSPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
