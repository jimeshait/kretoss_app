// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkProcess_Step extends StatelessWidget {
  WorkProcess_Step({super.key});

  List step = [
    {
      'image': 'assets/images/one.png',
      'stepno': 'Step One',
      'name': 'Meeting With The Customer',
      'desc':
          'The first step is to meet the customer who wants to get a website ready. We need to get hold of your good idea that you want to be ready.'
    },
    {
      'image': 'assets/images/two.png',
      'stepno': 'Step Two',
      'name': 'We Consider And Analyze The Work Plan',
      'desc':
          'Then we start creating a work plan for your website to complete your website on time.'
    },
    {
      'image': 'assets/images/three.png',
      'stepno': 'Step Three',
      'name': 'Work Hard On The Project',
      'desc':
          'Our team starts executing different steps that are required to make your website live, and the steps that we take are perfectly planned.'
    },
    {
      'image': 'assets/images/four.png',
      'stepno': 'Step four',
      'name': 'Once Again We Analyze And Check Everything',
      'desc':
          'After the work has been completed, we analyse the working site once again, and then the website goes through some testing.'
    },
    {
      'image': 'assets/images/five.png',
      'stepno': 'Step five',
      'name': 'Once Again We Analyze And Check Everything',
      'desc':
          'Complete the project, and hand it over to clients. Give them tutorials to learn the functions of the website or speak to them if need any help.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 2834,
      // width: 500,
      color: const Color(0xffECF2F6),
      child: Column(
        children: [
          ListView.builder(
            itemCount: step.length,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 55.0, left: 15, right: 15),
                    child: Container(
                      // height: 300,
                      // width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        step[index]['image'],
                        // height: 300,
                        // width: 500,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30.0, left: 15, right: 15),
                    child: Text(
                      step[index]['stepno'],
                      textScaleFactor: 1.2,
                      style: GoogleFonts.sourceSansPro(
                          color: Color(0xffC75C6F),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      step[index]['name'],
                      textScaleFactor: 1.2,
                      style: GoogleFonts.sourceSansPro(
                          color: Color(0xff292930),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      step[index]['desc'],
                      textScaleFactor: 1.2,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.sourceSansPro(
                        height: 1.5,
                        color: Color(0xff737387),
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              );
            },
          ),
          const SizedBox(
            height: 95,
            width: 500,
          ),
        ],
      ),
    );
  }
}
