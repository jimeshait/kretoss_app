import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/CMSDev/shopifyDev/shopifyDevPage.dart';
import '../services/CMSDev/wordPressDev/wordPressDevPage.dart';

class CMSDrawer extends StatefulWidget {
  const CMSDrawer({super.key});

  @override
  State<CMSDrawer> createState() => _CMSDrawerState();
}

class _CMSDrawerState extends State<CMSDrawer> {
  bool isSelect = false;
  bool isSelect1 = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Shopify Development',
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
                      builder: (context) => ShopifyDevPage(),
                      settings: RouteSettings(name: '/aboutPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(
                      builder: (context) => ShopifyDevPage()));
                  if (MaterialPageRoute(
                          builder: (context) => ShopifyDevPage()) ==
                      ShopifyDevPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            ListTile(
              title: Text(
                'WordPress Development',
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
                      builder: (context) => WordPressDevPage(),
                      settings: RouteSettings(name: '/aboutPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(
                      builder: (context) => WordPressDevPage()));
                  if (MaterialPageRoute(
                          builder: (context) => WordPressDevPage()) ==
                      WordPressDevPage()) {
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
