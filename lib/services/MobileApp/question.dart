import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  Question({super.key, required this.question, required this.que});
  List question;
  var que;
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  String isSelected = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF4F7F9),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, top: 55.0, right: 15.0, bottom: 25.0),
            child: Text(
              widget.que,
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292930)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35.0),
            child: ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.question.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = widget.question[index]['name'];
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color:
                                (isSelected == widget.question[index]['name'])
                                    ? Color(0xff5956E9)
                                    : Colors.transparent,
                            width: 2),
                        borderRadius:
                            BorderRadius.circular(10.0), //<-- SEE HERE
                      ),
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        // width: 500,
                        // height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                widget.question[index]['name'],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.sourceSansPro(
                                    color: Color(0xff404040),
                                    fontSize: 20,
                                    height: 1.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
