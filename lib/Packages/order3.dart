import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/bottombar.dart';
import 'package:kretoss_webapp/floationbtn.dart';
import 'package:url_launcher/url_launcher.dart';
import '../appbartop.dart';
import '../drawer/drawer.dart';

// ignore: must_be_immutable
class Order3 extends StatefulWidget {
  Order3({super.key, required this.package, required this.index});
  List package;
  int index;
  @override
  State<Order3> createState() => _OrderState();
}

class _OrderState extends State<Order3> {
  @override

  // Random intValue = new Random();
  // Random intValue2 = new Random();
  // ignore: override_on_non_overriding_member
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
  final numController = TextEditingController();
  bool iscap = false;
  void _submitData() {
    if (emailController.text.isEmpty ||
        nameController.text.isEmpty ||
        capController.text.isEmpty ||
        descController.text.isEmpty ||
        phoneController.text.isEmpty ||
        numController.text.isEmpty) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerMenu(),
      appBar: AppBarTop(
        preferredSize: const Size.fromHeight(55),
        child: SvgPicture.asset(
          'assets/svg/kretoss.svg',
          alignment: Alignment.centerLeft,
          height: 40,
          width: 40,
        ),
      ),
      floatingActionButton: FloatingBtn(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, bottom: 55.0, top: 45),
                child: Container(
                  color: const Color(0xffF3F6F9),
                  // height: 755,
                  // width: 500,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 35.0, left: 15.0, right: 15),
                                  child: Text(
                                    'Package Mobile App Development ${widget.package[widget.index]['type']}',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff292930)),
                                  )),
                            ),
                          ],
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
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        hintText: 'Your Name*',
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
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
                                      keyboardType: TextInputType.emailAddress,
                                      validator: validateEmail,
                                      cursorColor: const Color(0xff111111),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        hintText: 'Your Email*',
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
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
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        hintText: 'Your Contact Number.*',
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
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
                                  child: TextField(
                                      controller: numController,
                                      cursorColor: const Color(0xff111111),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        hintText: 'WhatsApp Number/SkypeID',
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ))),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15.0, top: 25.0),
                                  child: Text(
                                    'Your Package:- Mobile App Development: ${widget.package[widget.index]['type']}: ${widget.package[widget.index]['price']}',
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff292930)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 25.0),
                            child: Container(
                              //width: 450,
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
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        hintText:
                                            'Describe your project requirements',
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ))),
                            )),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 15.0, top: 25.0),
                                child: Text(
                                  'What is $randomget1 + $randomget2',
                                  textScaleFactor: 1.2,
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
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffF7F7F7),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: TextFormField(
                                      controller: capController,
                                      keyboardType: TextInputType.number,
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
                                      cursorColor: const Color(0xff111111),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        hintText: 'Type your answer',
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
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
                                    width: double.maxFinite,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            // ignore: deprecated_member_use
                                            primary: const Color(0xff5956e9)),
                                        onPressed: () {
                                          //_submitData();
                                          if (formKey.currentState!
                                              .validate()) {
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
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              });
                                          _submitData();
                                          Future.delayed(Duration(seconds: 2),
                                              () async {
                                            if (iscap == true &&
                                                isvalid == true) {
                                              print('cap:${iscap}');
                                              print('valid:${isvalid}');
                                              Navigator.of(context,
                                                      rootNavigator: true)
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
                                              final String subject =
                                                  'Order For Package:- Mobile App Development: ${widget.package[widget.index]['type']}: ${widget.package[widget.index]['price']}';
                                              final String body =
                                                  'Name: ${nameController.text}\nEmail: ${emailController.text}\nContact No: ${phoneController.text}\n Whatsapp/SkypeID: ${numController.text}\nMessage: ${descController.text}';
                                              final Email email = Email(
                                                body: body,
                                                subject: subject,
                                                recipients: [recipient],
                                                isHTML: false,
                                              );

                                              await FlutterEmailSender.send(
                                                  email);
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
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                content: Text('Invalid Input'),
                                              ));
                                            } else {
                                              print(iscap);
                                              print(isvalid);
                                              //validate();
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                content:
                                                    Text('Invalid Captcha'),
                                              ));
                                            }
                                          });
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(14.0),
                                          child: Text(
                                            'Submit',
                                            style: GoogleFonts.sourceSansPro(
                                                fontSize: 19),
                                          ),
                                        )))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
