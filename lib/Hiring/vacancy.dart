import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:file_picker/file_picker.dart';

class Vacancy extends StatefulWidget {
  const Vacancy({super.key});

  @override
  State<Vacancy> createState() => _VacancyState();
}

class _VacancyState extends State<Vacancy> {
  List vacancy = [
    {
      'image': 'assets/images/phpdev.png',
      'name': 'We Hiring PHP Developer',
      'name1': 'PHP Developer',
      'exp': 'Experience: 2-3 Years',
      'desc': [
        'Good knowledge in PHP frameworks and must have experience in Cack PHP & Laravel PHP',
        'Strong knowledge in jQuery, JavaScript',
        'Able to develop complex back-end API',
        'Able to integrate 3rd party APIs',
        'Strong R&N power learning new things.',
        'Good knowledge about MySQL & Mongo DB',
        'Well communicated'
      ]
    },
    {
      'image': 'assets/images/projectdev.jpg',
      'name': 'We Hiring Project Manager/Team Lead',
      'name1': 'Project Manager/Team Lead',
      'exp': 'Experience: 4+ Years',
    },
    {
      'image': 'assets/images/react-node-js.png',
      'name': 'We Hiring React + Node Developer',
      'name1': 'React + Node Developer',
      'exp': 'Experience: Minimum 1 Year',
      'desc': [
        'Excellent knowledge of MySQL, HTML5, CSS, Javascript, AJAX, React , jQuery, Node',
        'Experience with Design and development',
        'Intimate understanding of Socket integration',
        'Custom development & Customization and Debugging',
        'Integration Third party API like Payment , Email , SMS etc',
        'Creation of clean, logical, well-documented and re-usable code',
      ]
    },
    {
      'image': 'assets/images/bde.png',
      'name': 'We Hiring BDE (Business development executive)',
      'name1': 'BDE (Business development executive)',
      'exp': 'Experience : 6 months to 4 years',
      'desc': [
        'Must have exp in the IT field as BDE',
        'Should have basic knowledge about Web and Mobile app development and its technologies',
        'Should be able to generate leads from the social platform',
        'Must have experience in Overseas lead generation',
        'Must have experience in online portals Like Freelancer.com, Upwork, PeoplePerHour, Linked In, etc',
        'Excellent writing and communication skills.',
        'Can able to do cold calling, email campaigns, and social media campaigns',
        'Will be required knowledge of sales management, marketing, strategic management, and business planning'
      ]
    },
    {
      'image': 'assets/images/seodev.png',
      'name': 'We Hiring SEO Executive',
      'name1': 'SEO Executive',
      'exp': 'Experience : Minimum 0 to 6 Months',
      'desc': [
        'Good Verbal and written communication skills.',
        'Knowledge of analytics tools like Google Analytics.',
        'Knowledge of SEO practices.',
        'Basic knowledge of HTML',
        'Ability to multitask',
      ]
    },
  ];

  String vacancy1 = '• Mentor and lead a team of junior developers.\n'
      '• Take up system analysis, design, documenting responsibilities and get it done in time. He/ she should be able to perform code analysing and reading exercises for current and previous projects.\n'
      '• The Sr. developer will lead developers; Apart from this he will/ can be involved in the coding activities besides the team management role. All necessary support will be provided for smooth execution of projects. The senior developers will keep a track and reviews on existing projects to identify bottlenecks, bugs, performance issues and involve the team to study and learn from existing projects.\n'
      '• Must be able to advise ways and means to obtain performance metrics of applications and optimise applications.\n'
      '• Must possess excellent attention to detail and be able to familiarise and quickly learn new Software/ framework/ languages/ technology with ease';

  String vacancy2 =
      '• Hands on experience in Core PHP is must. 4+ years of experience with PHP and familiar with XHTML, HTML 5, JavaScript, CSS, Ajax, jQuery, APIs and mod-rewriting.\n'
      '• Experienced candidate who has practically worked on E-commerce websites.\n'
      '• Experience with on-line payments gateways, Affiliate management system, CMS referrals system will be an added advantage. Payment Gateway: Paypal, Authorize.net, Google Checkout, CCAVANUE.\n'
      '• Very good troubleshooting skills.\n'
      '• Building reusable and resalable products\n'
      '• Optimising MySQL, MongoDB Queries and databases to improve the performance.\n'
      '• Communicating technical concepts to Clients, and other audiences of all technical levels in a team environment.\n'
      '• Preference will be given if you hold working knowledge with on one of this Open Source like Drupal, Shopify, WordPress.\n'
      '• Preference will be given if you hold working knowledge with on one of these MVC frameworks like Laravel, Cake PHP, Node Js, Angular, React JS.\n';
  int randomget1 = Random().nextInt(10);

  int randomget2 = Random().nextInt(10);

  int total = 0;

  String names = "";

  bool iscap = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController capController = TextEditingController();

  bool isvalid = false;

  int cap = 0;

  String filePath = '';

  void _submitData() {
    if (nameController.text.isEmpty ||
        capController.text.isEmpty ||
        phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('All Fields are Required')));
    }
  }

  String? validateName(String? value) {
    final RegExp nameExp = RegExp(r'^[A-Za-z ]{1,50}$');
    if (!nameExp.hasMatch(value!)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text(
                'Please Enter a valid Name with less than 50 characters.')),
      );
    }
  }

  String? validatePhoneNumber(String? value) {
    // Regular expression to validate 10-digit phone number
    final RegExp phoneNumberRegex = RegExp(r'^[0-9]{10}$');

    if (!phoneNumberRegex.hasMatch(value!)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please Enter a 10-digit Phone Number')),
      );
    }

    return null;
  }

  String? validateCap(String? value) {
    int? number = int.tryParse(value!);
    if (number == null || number >= 100) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Please Enter a Number with less than 3 Digits')),
      );
    } else {
      setState(() {
        capController.text = value;
      });
    }

    return null;
  }

  // void randomgenerate() {
  //   total = randomget1 + randomget2;
  //   print(total);
  //   setState(() {
  //     randomget1 = Random().nextInt(10);
  //     randomget2 = Random().nextInt(10);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      // width: 500,
      // height: 4260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0, bottom: 25.0),
            child: ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: vacancy.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20.0, left: 15.0, right: 15.0),
                      child: Image.asset(
                        vacancy[index]['image'],
                        height: 380,
                        width: 440,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        vacancy[index]['name'],
                        textScaleFactor: 1.2,
                        style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: Color(0xff292930),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 5.0, bottom: 15.0, right: 15.0),
                      child: Text(
                        vacancy[index]['exp'],
                        textScaleFactor: 1.2,
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15, color: Color(0xffC75C6F)),
                      ),
                    ),
                    if (index == 0 || index == 2 || index == 3 || index == 4)
                      for (int i = 0; i < vacancy[index]['desc'].length; i++)
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\u2022',
                                style: GoogleFonts.sourceSansPro(fontSize: 20),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  vacancy[index]['desc'][i],
                                  textScaleFactor: 1.2,
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.sourceSansPro(
                                    fontSize: 15,
                                    color: Color(0xff404040),
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    if (index == 1)
                      for (int i = 0; i < vacancy[1].length; i++)
                        Column(
                          children: [
                            if (i == 1)
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 15.0, bottom: 15.0, right: 15.0),
                                child: Text(
                                  'The candidates for senior development role will perform the following responsibilities:',
                                  textScaleFactor: 1.2,
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                      color: Color(0xff404040)),
                                ),
                              ),
                          ],
                        ),
                    if (index == 1)
                      // for (int i = 0; i < vacancy1[0]; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   '•',
                            //   style: GoogleFonts.sourceSansPro(fontSize: 20),
                            // ),
                            // SizedBox(width: 5),
                            Expanded(
                              child: ReadMoreText(
                                vacancy1,
                                textScaleFactor: 1.2,
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: 15,
                                  color: Color(0xff404040),
                                  height: 1.5,
                                ),
                                trimCollapsedText: 'Read More',
                                colorClickableText: Color(0xff5956e9),
                                trimExpandedText: ' Read Less',
                                trimLines: 4,
                                trimMode: TrimMode.Line,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (index == 1)
                      for (int i = 0; i < vacancy[1].length; i++)
                        Column(
                          children: [
                            if (i == 1)
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10.0, left: 15.0, bottom: 15.0),
                                child: Text(
                                  'Job Requirements:',
                                  textScaleFactor: 1.2,
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff404040)),
                                ),
                              ),
                          ],
                        ),
                    if (index == 1)
                      //for (int i = 0; i < vacancy2[0].length; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   '\u2022',
                            //   style: GoogleFonts.sourceSansPro(fontSize: 20),
                            // ),
                            // SizedBox(width: 5),
                            Expanded(
                              child: ReadMoreText(
                                vacancy2,
                                textScaleFactor: 1.2,
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.sourceSansPro(
                                    fontSize: 15,
                                    color: Color(0xff404040),
                                    height: 1.5),
                                trimCollapsedText: 'Read More',
                                colorClickableText: Color(0xff5956e9),
                                trimExpandedText: ' Read Less',
                                trimLines: 4,
                                trimMode: TrimMode.Line,
                              ),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 20.0, right: 15.0, bottom: 20.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                              // height: 60,
                              // width: 140,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff5956e9)),
                                  onPressed: () {
                                    setState(() {
                                      names = '';
                                    });
                                    showDialog(
                                        context: context,
                                        builder: (ctx) => StatefulBuilder(
                                              builder: (context, newSetState) {
                                                return ScaffoldMessenger(
                                                  child: Builder(
                                                      builder: (context) {
                                                    return Scaffold(
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      body:
                                                          SingleChildScrollView(
                                                        child: Form(
                                                          key: formKey,
                                                          child: AlertDialog(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                side:
                                                                    const BorderSide(
                                                                        color: Color(
                                                                            0xffdcdcdc),
                                                                        width:
                                                                            10)),
                                                            actions: [
                                                              Container(
                                                                // width: 400,
                                                                // height: 480,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(
                                                                              left: 20.0,
                                                                              top: 12.0,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              vacancy[index]['name'],
                                                                              textAlign: TextAlign.start,
                                                                              style: GoogleFonts.sourceSansPro(fontSize: 16, color: Color(0xff292930), fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              top: 12.0,
                                                                              right: 20.0),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                Image.asset(
                                                                              'assets/images/close.png',
                                                                              height: 20,
                                                                              width: 20,
                                                                              color: Colors.black,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                              top: 8.0),
                                                                      child:
                                                                          Divider(),
                                                                    ),
                                                                    Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                20.0,
                                                                            right:
                                                                                20.0,
                                                                            top:
                                                                                10.0),
                                                                        child:
                                                                            Container(
                                                                          decoration: BoxDecoration(
                                                                              color: const Color(0xffF7F7F7),
                                                                              borderRadius: BorderRadius.circular(10)),
                                                                          child: Padding(
                                                                              padding: const EdgeInsets.all(0),
                                                                              child: TextFormField(
                                                                                  controller: nameController,
                                                                                  //validator: validateName,
                                                                                  cursorColor: const Color(0xff111111),
                                                                                  decoration: InputDecoration(
                                                                                    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                                                                                    hintText: 'Your Name*',
                                                                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                                                                                  ))),
                                                                        )),
                                                                    Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                20.0,
                                                                            right:
                                                                                20.0,
                                                                            top:
                                                                                10.0),
                                                                        child:
                                                                            Container(
                                                                          decoration: BoxDecoration(
                                                                              color: const Color(0xffF7F7F7),
                                                                              borderRadius: BorderRadius.circular(10)),
                                                                          child: Padding(
                                                                              padding: const EdgeInsets.all(0),
                                                                              child: TextFormField(
                                                                                  controller: phoneController,
                                                                                  //validator: validatePhoneNumber,
                                                                                  keyboardType: TextInputType.phone,
                                                                                  cursorColor: const Color(0xff111111),
                                                                                  decoration: InputDecoration(
                                                                                    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                                                                                    hintText: 'Your Contact No.*',
                                                                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                                                                                  ))),
                                                                        )),
                                                                    Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                20.0,
                                                                            right:
                                                                                20.0,
                                                                            top:
                                                                                10.0),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              45,
                                                                          decoration: BoxDecoration(
                                                                              color: const Color(0xffF7F7F7),
                                                                              borderRadius: BorderRadius.circular(10)),
                                                                          child: Padding(
                                                                              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                                                                              child: Row(
                                                                                children: [
                                                                                  InkWell(
                                                                                    onTap: () async {
                                                                                      FilePickerResult? result = await FilePicker.platform.pickFiles();
                                                                                      if (result != null) {
                                                                                        PlatformFile file = result.files.first;
                                                                                        newSetState(
                                                                                          () {
                                                                                            setState(() {
                                                                                              names = file.name;
                                                                                              filePath = file.path!;
                                                                                              print(names);
                                                                                            });
                                                                                          },
                                                                                        );
                                                                                      } else {
                                                                                        // User canceled the picker
                                                                                      }
                                                                                    },
                                                                                    child: Container(
                                                                                      // height:
                                                                                      //     25,
                                                                                      // width:
                                                                                      //     80
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(color: Colors.black),
                                                                                        color: Color(0xfff7f7f7),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.only(right: 2.0),
                                                                                        child: Text(
                                                                                          ' Choose file',
                                                                                          style: GoogleFonts.sourceSansPro(color: Color(0xff404040)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  if (names == '')
                                                                                    const Expanded(child: Text(' No file chosen'))
                                                                                  else
                                                                                    Expanded(
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsets.only(left: 5.0),
                                                                                        child: Text(names.toString()),
                                                                                      ),
                                                                                    )
                                                                                ],
                                                                              )),
                                                                        )),
                                                                    Center(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            top:
                                                                                12.0,
                                                                            bottom:
                                                                                3.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              'What is $randomget1 + $randomget2 ? ',
                                                                              style: GoogleFonts.sourceSansPro(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff404040)),
                                                                            ),
                                                                            GestureDetector(
                                                                                onTap: () {
                                                                                  total = randomget1 + randomget2;
                                                                                  print(total);
                                                                                  newSetState(
                                                                                    () {
                                                                                      setState(() {
                                                                                        total = randomget1 + randomget2;
                                                                                        randomget1 = Random().nextInt(10);
                                                                                        randomget2 = Random().nextInt(10);
                                                                                        total = randomget1 + randomget2;
                                                                                      });
                                                                                    },
                                                                                  );
                                                                                },
                                                                                child: Image.network(
                                                                                  'https://kretoss.com/wp-content/plugins/ds-cf7-math-captcha/assets/img/icons8-refresh-30.png',
                                                                                  fit: BoxFit.cover,
                                                                                )),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                20.0,
                                                                            right:
                                                                                20.0),
                                                                        child:
                                                                            Container(
                                                                          decoration: BoxDecoration(
                                                                              color: const Color(0xffF7F7F7),
                                                                              borderRadius: BorderRadius.circular(10)),
                                                                          child: Padding(
                                                                              padding: const EdgeInsets.all(0),
                                                                              child: TextFormField(
                                                                                  controller: capController,
                                                                                  validator: validateCap,
                                                                                  keyboardType: TextInputType.number,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      try {
                                                                                        cap = int.parse(value);
                                                                                      } catch (e) {
                                                                                        SnackBar(
                                                                                          content: Text('Captcha Invalid'),
                                                                                        );
                                                                                      }
                                                                                      SnackBar(
                                                                                        content: Text('Captcha Invalid'),
                                                                                      );
                                                                                    });
                                                                                  },
                                                                                  cursorColor: const Color(0xff111111),
                                                                                  decoration: InputDecoration(
                                                                                    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                                                                                    hintText: 'Type your answer',
                                                                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                                                                                  ))),
                                                                        )),
                                                                    Center(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                15.0,
                                                                            right:
                                                                                15.0,
                                                                            top:
                                                                                15,
                                                                            bottom:
                                                                                15.0),
                                                                        child: ClipRRect(
                                                                            borderRadius: BorderRadius.circular(15),
                                                                            child: Container(
                                                                                height: 55,
                                                                                width: 450,
                                                                                child: ElevatedButton(
                                                                                    style: ElevatedButton.styleFrom(primary: const Color(0xff5956e9)),
                                                                                    onPressed: () {
                                                                                      // _submitData();
                                                                                      if (formKey.currentState!.validate()) {
                                                                                        setState(() {
                                                                                          isvalid = !isvalid;
                                                                                        });
                                                                                      } else {
                                                                                        setState(() {
                                                                                          isvalid = false;
                                                                                        });
                                                                                      }
                                                                                      if (cap == total) {
                                                                                        setState(() {
                                                                                          iscap = !iscap;
                                                                                        });
                                                                                      } else {
                                                                                        setState(() {
                                                                                          iscap = false;
                                                                                        });
                                                                                      }
                                                                                      showDialog(
                                                                                          context: context,
                                                                                          builder: (value) {
                                                                                            return Center(
                                                                                              child: CircularProgressIndicator(),
                                                                                            );
                                                                                          });
                                                                                      _submitData();
                                                                                      Future.delayed(Duration(seconds: 2), () async {
                                                                                        if (iscap == true || isvalid == true) {
                                                                                          print('cap:${iscap}');
                                                                                          print('valid:${isvalid}');
                                                                                          Navigator.of(context, rootNavigator: true).pop();
                                                                                          //_submitData();
                                                                                          print('Hi');
                                                                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                                                            content: Text('Thank you for contacting us. our executive will analyse your concern and reach you soon'),
                                                                                          ));
                                                                                          final String recipient = 'service@kretoss.in';
                                                                                          final String subject = 'Apply For ${vacancy[index]['name1']}';
                                                                                          final String body = 'Name: ${nameController.text}\nContact No: ${phoneController.text}\nI am Applying for ${vacancy[index]['name1']}';
                                                                                          final Email email = Email(
                                                                                            body: body,
                                                                                            subject: subject,
                                                                                            recipients: [recipient],
                                                                                            attachmentPaths: [filePath],
                                                                                            isHTML: false,
                                                                                          );

                                                                                          await FlutterEmailSender.send(email);
                                                                                          // nameController.clear();
                                                                                          // phoneController.clear();
                                                                                          // capController.clear();
                                                                                          // descController.clear();
                                                                                          // emailController.clear();
                                                                                        } else if (iscap == true || isvalid == false) {
                                                                                          print('cap:${iscap}');
                                                                                          print('valid:${isvalid}');
                                                                                          //_submitData();
                                                                                          //validate();
                                                                                          Navigator.of(context, rootNavigator: true).pop();
                                                                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                                                            content: Text('Invalid Input'),
                                                                                          ));
                                                                                        } else {
                                                                                          print(iscap);
                                                                                          print(isvalid);
                                                                                          //validate();
                                                                                          Navigator.of(context, rootNavigator: true).pop();
                                                                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                                                            content: Text('Invalid Captcha'),
                                                                                          ));
                                                                                        }
                                                                                      });
                                                                                    },
                                                                                    child: Text(
                                                                                      'Submit',
                                                                                      style: GoogleFonts.sourceSansPro(fontSize: 19),
                                                                                    )))),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            ));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: Text(
                                      'Apply for Job',
                                      style: GoogleFonts.sourceSansPro(
                                          fontSize: 19),
                                    ),
                                  )))),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
