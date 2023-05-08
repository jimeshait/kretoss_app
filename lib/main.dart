import 'dart:async';
import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kretoss_webapp/About_Us.dart';
import 'package:kretoss_webapp/Contact/contact_page.dart';
import 'package:kretoss_webapp/chat.dart';
import 'package:kretoss_webapp/comments.dart';
import 'package:kretoss_webapp/companylogo.dart';
import 'package:kretoss_webapp/drawer/drawerdata.dart';
import 'package:kretoss_webapp/estimate_project.dart';
import 'package:kretoss_webapp/firstPage.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:kretoss_webapp/service.dart';
import 'package:kretoss_webapp/services/service_page.dart';
import 'package:kretoss_webapp/tokendata.dart';
import 'package:kretoss_webapp/whatsapp.dart';
import 'package:kretoss_webapp/working_app.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import './topbar.dart';
import './pagescroll.dart';
import './service.dart';
import './About_Us.dart';
import './working_app.dart';
import './numgame.dart';
import './review.dart';
import './our_blog.dart';
import './bottombar.dart';
import 'drawer/drawer.dart';
import './appbartop.dart';
import 'drawer/drawer.dart';
import 'Portfolio/portfolio.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => drawerData()),
        ChangeNotifierProvider(create: (context) => tokenData()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String token = '';
  Future postData() async {
    final body = {'username': 'Kretoss Technology', 'password': 'admin@123'};

    final response = await http.post(
      Uri.parse('https://kretoss.in/project/kretoss_wp/wp-json/api/v1/token'),
      body: body,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('Token: ${data}'); // print the token value
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHome()));
      token = '$data';
      //print(token);
    } else {
      throw Exception('Failed to post data');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    postData();
    super.initState();
  }

  @override
  // state() {
  //   print('hi');
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 3),
  //       () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => MyHome())));
  // }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Container(
      color: Colors.white,
      child: Center(
        child: SvgPicture.asset(
          'assets/svg/kretoss.svg',
          height: 70,
          width: 70,
        ),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isAppbar = false;
  int currentIndex = 0;

  List<Widget> routeList = <Widget>[
    FirstPage(),
    Service_Page(
      isAppbar: false,
    ),
    Portfolio(
      isAppBar: false,
    ),
    Contact_Page(
      isAppBar: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ChangeNotifierProvider(
      create: (context) => drawerData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            //fontFamily: 'SourceSansPro',
            accentColor: Color(0xff404040),
            buttonColor: Color(0xff5956E9),
            appBarTheme: AppBarTheme(color: Colors.transparent)),
        home: Scaffold(
            endDrawer: DrawerMenu(),
            endDrawerEnableOpenDragGesture: false,
            appBar: AppBarTop(
                child: SvgPicture.asset(
                  'assets/svg/kretoss.svg',
                  //alignment: Alignment.centerLeft,
                  height: 40,
                  width: 40,
                ),
                preferredSize: Size.fromHeight(55)),
            body: routeList.elementAt(currentIndex),
            // floatingActionButtonLocation:
            //     FloatingActionButtonLocation.miniStartDocked,
            floatingActionButton: FloatingBtn(),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (int value) {
                setState(() {
                  currentIndex = value;
                });
              },
              backgroundColor: Color(0xffDBF8FF),
              selectedItemColor: Color(0xff4169e1),
              //selectedIconTheme: IconThemeData(color: Color(0xffDBF8FF)),
              unselectedItemColor: Colors.black,
              showUnselectedLabels: true,
              selectedFontSize: 0.5,
              selectedLabelStyle: TextStyle(fontSize: 10),
              unselectedLabelStyle: TextStyle(fontSize: 10),
              unselectedFontSize: 0.5,
              elevation: 0,
              mouseCursor: MouseCursor.defer,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  backgroundColor: Color(0xffDBF8FF),
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.work,
                  ),
                  label: 'Services',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.badge),
                  label: 'Portfolio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.phone),
                  label: 'Contact',
                ),
              ],
            )),
      ),
    );
  }
}
