import 'dart:async';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:form_validator/form_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class FreeQuote extends StatefulWidget {
  FreeQuote({super.key});

  @override
  State<FreeQuote> createState() => _FreeQuoteState();
}

class _FreeQuoteState extends State<FreeQuote> {
  @override

  // Random intValue = new Random();
  // Random intValue2 = new Random();
  int randomget1 = Random().nextInt(10);

  int randomget2 = Random().nextInt(10);

  int total = 0;

  int cap = 0;

  bool isvalid = false;

  // void randomgenerate() {
  //   print(total);
  //   setState(() {
  //     total = randomget1 + randomget2;
  //     randomget1 = Random().nextInt(10);
  //     randomget2 = Random().nextInt(10);
  //   });
  // }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final descController = TextEditingController();
  final capController = TextEditingController();
  bool iscap = false;
  void _submitData() {
    if (emailController.text.isEmpty ||
        nameController.text.isEmpty ||
        capController.text.isEmpty ||
        descController.text.isEmpty ||
        phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('All Fields are Required')));
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

  // void validate() {
  //   setState(() {
  //     if (formKey.currentState!.validate()) {
  //       isvalid = true;
  //     } else {
  //       isvalid = false;
  //     }
  //   });
  // }

  // void _sendEmail() async {
  //   String url = 'mailto:$recipient?subject=$subject&body=$body';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, right: 10.0, bottom: 25.0, top: 45),
        child: Container(
          // height: 670,
          // width: 500,
          child: Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 15.0, right: 15.0),
                  child: Text(
                    'Get a free quote now',
                    textAlign: TextAlign.left,
                    textScaleFactor: 1.2,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff292930)),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: TextFormField(
                              controller: nameController,
                              validator: validateName,
                              cursorColor: Color(0xff111111),
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
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                              controller: emailController,
                              validator: validateEmail,
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Color(0xff111111),
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
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                              controller: phoneController,
                              validator: validatePhoneNumber,
                              keyboardType: TextInputType.phone,
                              cursorColor: Color(0xff111111),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'Contact No.*',
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                              ))),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 25.0),
                    child: Container(
                      //width: 450,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              controller: descController,
                              cursorColor: Color(0xff111111),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'Message*',
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
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: GestureDetector(
                            onTap: () {
                              print(total);
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
                          color: Color(0xffF7F7F7),
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
                              cursorColor: Color(0xff111111),
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
                                    primary: Color(0xff5956e9)),
                                onPressed: () {
                                  print(capController.text);
                                  print(total);
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
                                          'Name: ${nameController.text}\nEmail: ${emailController.text}\nContact No: ${phoneController.text}\nMessage: ${descController.text}';
                                      final Email email = Email(
                                        body: body,
                                        subject: subject,
                                        recipients: [recipient],
                                        isHTML: false,
                                      );
                                      await FlutterEmailSender.send(email);
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
