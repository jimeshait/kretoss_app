// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'dart:math';
import 'package:form_validator/form_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactQuote extends StatefulWidget {
  const ContactQuote({super.key});

  @override
  State<ContactQuote> createState() => _ContactQuoteState();
}

class _ContactQuoteState extends State<ContactQuote> {
  @override
  // ignore: override_on_non_overriding_member
  final List<String> _list = [
    'Select Any One Service',
    'Mobile App Development',
    'Web Development',
    'Web Design',
    'CMS & ECommerce Development',
    'Payment & Shipping API \nIntegration Solutions',
    'Digital Marketing',
    'UX/UI'
  ];
  bool isStrechedDropDown = false;
  int groupValue = 0;
  int select = 0;
  String isSelected = 'Select Any One Service';
  // Random intValue = new Random();
  // Random intValue2 = new Random();
  int randomget1 = Random().nextInt(10);

  int randomget2 = Random().nextInt(10);

  int total = 0;

  int cap = 0;

  bool isvalid = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final descController = TextEditingController();
  final capController = TextEditingController();
  bool iscap = false;
  void randomgenerate() {
    total = randomget1 + randomget2;
    print(total);
    setState(() {
      randomget1 = Random().nextInt(10);
      randomget2 = Random().nextInt(10);
    });
  }

  void _submitData() {
    if (emailController.text.isEmpty ||
        nameController.text.isEmpty ||
        capController.text.isEmpty ||
        descController.text.isEmpty ||
        phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('All Fields are required')),
      );
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

  String? validateEmail(String? value) {
    // Regular expression to validate email address
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value!)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please Enter a Valid Email Address')),
      );
    }

    return null;
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, right: 10.0, bottom: 25.0, top: 45),
        // ignore: avoid_unnecessary_containers
        child: Container(
          // height: 670,
          // width: 500,
          child: Card(
            elevation: 10,
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 35.0, left: 15.0, right: 15),
                  child: Text(
                    'Get a free quote now',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      //color: Color(0xff292930)
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                              validator: validateName,
                              controller: nameController,
                              cursorColor: const Color(0xff111111),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'Your Name*',
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                              ))),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                              controller: emailController,
                              validator: validateEmail,
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: const Color(0xff111111),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'Your Email*',
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                              ))),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                              controller: phoneController,
                              validator: validatePhoneNumber,
                              keyboardType: TextInputType.phone,
                              cursorColor: const Color(0xff111111),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'Your Contact Number*',
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                              ))),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
                  child: Container(
                    // width: 450,
                    // height: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xffF7F7F7),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Text(
                              isSelected,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                              onTap: () {
                                isStrechedDropDown = !isStrechedDropDown;
                                if (isStrechedDropDown == true)
                                  // ignore: curly_braces_in_flow_control_structures
                                  showDialog(
                                      context: context,
                                      builder: (ctx) => StatefulBuilder(
                                            builder: (context, newSetState) {
                                              return AlertDialog(
                                                actions: [
                                                  // ignore: avoid_unnecessary_containers
                                                  Container(
                                                    // width: 4,
                                                    //height: 345,
                                                    child: ListView.builder(
                                                      padding: EdgeInsets.only(
                                                          top: 10, bottom: 10),
                                                      itemCount: _list.length,
                                                      //controller: scrollController2,
                                                      shrinkWrap: true,
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      itemBuilder:
                                                          (context, index) {
                                                        return InkWell(
                                                          onTap: () {
                                                            newSetState(
                                                              () {
                                                                setState(() {
                                                                  select =
                                                                      index;
                                                                  isSelected =
                                                                      _list[
                                                                          select];
                                                                  print(
                                                                      isSelected);
                                                                  Navigator.pop(
                                                                      context);
                                                                });
                                                              },
                                                            );
                                                          },
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        _list.elementAt(
                                                                            index),
                                                                        textScaleFactor:
                                                                            1.2,
                                                                        style: GoogleFonts
                                                                            .sourceSansPro(
                                                                          fontSize:
                                                                              15,
                                                                          color:
                                                                              Color(0xff292930),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  (isSelected ==
                                                                          _list[
                                                                              index])
                                                                      ? Icon(
                                                                          Icons
                                                                              .radio_button_checked,
                                                                          color:
                                                                              Colors.blue,
                                                                          size:
                                                                              22,
                                                                        )
                                                                      : Icon(
                                                                          Icons
                                                                              .circle_outlined,
                                                                          size:
                                                                              22,
                                                                        )
                                                                ],
                                                              ),
                                                              if (index != 7)
                                                                Divider()
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ));
                              },
                              child: Icon(isStrechedDropDown
                                  ? Icons.expand_more
                                  : Icons.expand_more)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 25.0),
                    child: Container(
                      // width: 450,
                      height: 150,
                      decoration: BoxDecoration(
                          color: const Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              controller: descController,
                              cursorColor: const Color(0xff111111),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'Describe your project requirements',
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                              ))),
                    )),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, top: 25.0),
                        child: Text(
                          'What is $randomget1 + $randomget2',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff292930)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                total = randomget1 + randomget2;
                                randomget1 = Random().nextInt(10);
                                randomget2 = Random().nextInt(10);
                                total = randomget1 + randomget2;
                              });
                            },
                            child: Image.network(
                              'https://kretoss.com/wp-content/plugins/ds-cf7-math-captcha/assets/img/icons8-refresh-30.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                              controller: capController,
                              validator: validateCap,
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
                              keyboardType: TextInputType.number,
                              cursorColor: const Color(0xff111111),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'Type your answer',
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                              ))),
                    )),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 25, bottom: 15.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                            //height: 55,
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    // ignore: deprecated_member_use
                                    primary: const Color(0xff5956e9)),
                                onPressed: () {
                                  //_submitData();
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
                                  Future.delayed(Duration(seconds: 2),
                                      () async {
                                    if (iscap == true && isvalid == true) {
                                      print('cap:${iscap}');
                                      print('valid:${isvalid}');
                                      Navigator.of(context, rootNavigator: true)
                                          .pop();
                                      //_submitData();
                                      print('Hi');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                            'Thank you for contacting us. our executive will analyse your concern and reach you soon'),
                                      ));
                                      final String recipient =
                                          'service@kretoss.in';
                                      final String subject = 'Free Quote';
                                      final String body =
                                          'Name: ${nameController.text}\nEmail: ${emailController.text}\nContact No: ${phoneController.text}\n Service: ${isSelected.toString()}\nMessage: ${descController.text}';
                                      final Email email = Email(
                                        body: body,
                                        subject: subject,
                                        recipients: [recipient],
                                        isHTML: false,
                                      );
                                      await FlutterEmailSender.send(email);
                                      // nameController.clear();
                                      // phoneController.clear();
                                      // capController.clear();
                                      // descController.clear();
                                      // emailController.clear();
                                    } else if (iscap == true &&
                                        isvalid == false) {
                                      print('cap:${iscap}');
                                      print('valid:${isvalid}');
                                      //_submitData();
                                      //validate();
                                      Navigator.of(context, rootNavigator: true)
                                          .pop();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text('Invalid Input'),
                                      ));
                                    } else {
                                      print(iscap);
                                      print(isvalid);
                                      //validate();
                                      Navigator.of(context, rootNavigator: true)
                                          .pop();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text('Invalid Captcha'),
                                      ));
                                    }
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text(
                                    'Get Free Quote',
                                    style:
                                        GoogleFonts.sourceSansPro(fontSize: 19),
                                  ),
                                )))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
