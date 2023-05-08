import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skill extends StatefulWidget {
  Skill({super.key, required this.skill});
  final List skill;

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  String Selected = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 2500,
      // width: 500,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, top: 25.0, right: 15.0, bottom: 15.0),
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.skill.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Selected = widget.skill[index]['name'];
                      });
                    },
                    child: Card(
                      elevation:
                          Selected == widget.skill[index]['name'] ? 10 : 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Selected == widget.skill[index]['name']
                                    ? Colors.transparent
                                    : Color(0xffededed))),
                        // height: 250,
                        // width: 300,
                        //color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10.0, bottom: 15.0, left: 15.0, right: 15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                widget.skill[index]['image'],
                                height: 90,
                                width: 60,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0,
                                          right: 15.0,
                                          top: 10.0,
                                          bottom: 5.0),
                                      child: Text(
                                        widget.skill[index]['name'],
                                        textScaleFactor: 1.2,
                                        style: GoogleFonts.sourceSansPro(
                                            fontSize: 20,
                                            color: Color(0xff292930),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0,
                                          right: 10.0,
                                          bottom: 10.0),
                                      child: Text(
                                        widget.skill[index]['content'],
                                        textAlign: TextAlign.justify,
                                        textScaleFactor: 1.2,
                                        style: GoogleFonts.sourceSansPro(
                                            height: 1.5,
                                            fontSize: 15,
                                            color: Color(0xff404040)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
