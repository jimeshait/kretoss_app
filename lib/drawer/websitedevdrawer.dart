import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../services/Website Development/laravelWeb/laravelPage.dart';
import '../services/Website Development/nodeJSWeb/nodeJSPage.dart';
import '../services/Website Development/phpWeb/phpPage.dart';

class WebsiteDevDrawer extends StatefulWidget {
  const WebsiteDevDrawer({super.key});

  @override
  State<WebsiteDevDrawer> createState() => _WebsiteDevDrawerState();
}

class _WebsiteDevDrawerState extends State<WebsiteDevDrawer> {
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
                'PHP Web Development',
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
                      builder: (context) => PhpPage(),
                      settings: RouteSettings(name: '/phpPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => PhpPage()));
                  if (MaterialPageRoute(builder: (context) => PhpPage()) ==
                      PhpPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            ListTile(
              title: Text(
                'Laravel Development',
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
                      builder: (context) => LaravelPage(),
                      settings: RouteSettings(name: '/aboutPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => LaravelPage()));
                  if (MaterialPageRoute(builder: (context) => LaravelPage()) ==
                      LaravelPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            ListTile(
              title: Text(
                'NodeJS Development',
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
                      builder: (context) => NodeJSPage(),
                      settings: RouteSettings(name: '/aboutPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => NodeJSPage()));
                  if (MaterialPageRoute(builder: (context) => NodeJSPage()) ==
                      NodeJSPage()) {
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
