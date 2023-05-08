import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/drawer/drawerdata.dart';
import 'package:kretoss_webapp/services/MobileApp/iosApp/iosPage.dart';
import 'package:kretoss_webapp/services/MobileApp/reactnativeApp/reactNativePage.dart';
import 'package:provider/provider.dart';

import '../services/MobileApp/flutterApp/flutterPage.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({super.key});

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  bool isSelect = false;
  bool isSelect1 = false;
  bool isSelect2 = false;

  List drawer = [
    {
      'name': 'iOS App Development Services',
      'navigate': iOSPage(),
      'isexpanded': false,
      'isExpanded': false
    },
    {
      'name': 'Flutter App Development',
      'navigate': FlutterPage(),
      'isexpanded': false,
      'isExpanded': false
    },
    {
      'name': 'React Native App Development',
      'navigate': ReactNativePage(),
      'isexpanded': true,
      'isExpanded': false
    },
  ];

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
                'iOS App Development Services',
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
                      builder: (context) => iOSPage(),
                      settings: RouteSettings(name: '/iosPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => iOSPage()));
                  if (MaterialPageRoute(builder: (context) => iOSPage()) ==
                      iOSPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            ListTile(
              title: Text(
                'Flutter App Development',
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
                      builder: (context) => FlutterPage(),
                      settings: RouteSettings(name: '/aboutPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(builder: (context) => FlutterPage()));
                  if (MaterialPageRoute(builder: (context) => FlutterPage()) ==
                      FlutterPage()) {
                    print('hi');
                    Navigator.pop(context);
                  }
                });
              },
            ),
            ListTile(
              title: Text(
                'React Native App Development',
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
                      builder: (context) => ReactNativePage(),
                      settings: RouteSettings(name: '/aboutPage')),
                  ModalRoute.withName('/'),
                ).then((result) {
                  print(MaterialPageRoute(
                      builder: (context) => ReactNativePage()));
                  if (MaterialPageRoute(
                          builder: (context) => ReactNativePage()) ==
                      ReactNativePage()) {
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
