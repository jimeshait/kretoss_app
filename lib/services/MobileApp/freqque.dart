import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bottombar.dart';

class FreqQue extends StatefulWidget {
  FreqQue({super.key, required this.freq});
  final List freq;

  @override
  State<FreqQue> createState() => _FreqQueState();
}

class _FreqQueState extends State<FreqQue> {
  String _customTileExpanded = '';
  bool expand = false;
  int select = 0;
  String press = '';
  // void expansion() {
  //   setState(() {
  //     Icon((_customTileExpanded == widget.freq[index]['que'])
  //         ? Icons.minimize_outlined
  //         : Icons.add);
  //   });
  // }

  Widget buildTile() => ListTile(
      trailing: Icon(expand == true ? Icons.minimize_outlined : Icons.add));

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffF4F7F9),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 55.0, left: 15.0, right: 15.0),
                child: Text(
                  'FAQs',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.sourceSansPro(color: Color(0xffC75C6F)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
                child: Text(
                  'Frequently asked questions',
                  textScaleFactor: 1.2,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292930)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
                child: Text(
                    'We hope we\'ve answered your questions, however, our door is always open for a conversation if you have any more.',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15, color: Color(0xff404040), height: 1.5)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, left: 15.0, right: 15.0, bottom: 30.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: widget.freq.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Card(
                          elevation: (widget.freq[index]['expand'] == true)
                              ? (press == widget.freq[index]['que'])
                                  ? 10
                                  : 2
                              : 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: (widget.freq[index]['expand'] == true)
                              ? (press == widget.freq[index]['que'])
                                  ? Colors.white
                                  : Color(0xfff8f8f8)
                              : Color(0xfff8f8f8),
                          child: Container(
                              // height: 500,
                              // width: 500,
                              // decoration: BoxDecoration(
                              //   color: (widget.freq[index]['expand'] == true)
                              //       ? (press == widget.freq[index]['que'])
                              //           ? Colors.white
                              //           : Color(0xfff8f8f8)
                              //       : Color(0xfff8f8f8),
                              // ),
                              child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 15.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          select = index;
                                          widget.freq[select]['expand'] =
                                              !widget.freq[select]['expand'];
                                          press = widget.freq[index]['que'];
                                          print(select);
                                        });
                                      },
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0,
                                                  bottom: 10.0,
                                                  left: 15.0,
                                                  right: 15.0),
                                              child: InkWell(
                                                child: Text(
                                                  widget.freq[index]['que'],
                                                  textScaleFactor: 1.2,
                                                  style:
                                                      GoogleFonts.sourceSansPro(
                                                          height: 1.5,
                                                          fontSize: 15,
                                                          color: (widget.freq[index]
                                                                      [
                                                                      'expand'] ==
                                                                  true)
                                                              ? (press ==
                                                                      widget.freq[
                                                                              index]
                                                                          [
                                                                          'que'])
                                                                  ? Color(
                                                                      0xff5956E9)
                                                                  : Color(
                                                                      0xff27272E)
                                                              : Color(
                                                                  0xff27272E)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: (press ==
                                                    widget.freq[index]['que'])
                                                ? (widget.freq[index]
                                                            ['expand'] ==
                                                        true)
                                                    ? Icon(
                                                        Icons.minimize_rounded,
                                                        color:
                                                            Color(0xff5956E9))
                                                    : Icon(Icons.add_outlined)
                                                : Icon(Icons.add),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (press == widget.freq[index]['que'])
                                    if (widget.freq[index]['expand'] == true)
                                      Column(
                                        children: [
                                          // Padding(
                                          //   padding: const EdgeInsets.only(
                                          //       top: 10.0, bottom: 13.0),
                                          //   child: Text(
                                          //     widget.freq[index]['que'],
                                          //     textScaleFactor: 1.2,
                                          //     textAlign: TextAlign.justify,
                                          //     style: GoogleFonts.sourceSansPro(fontSize: 15),
                                          //   ),
                                          // ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 22.0),
                                            child: ListTile(
                                                title: Text(
                                              widget.freq[select]['ans'],
                                              textScaleFactor: 1.2,
                                              textAlign: TextAlign.justify,
                                              style: GoogleFonts.sourceSansPro(
                                                  fontSize: 15,
                                                  height: 1.5,
                                                  color: Color(0xff404040)),
                                            )),
                                          ),
                                        ],
                                      )
                                ]),
                          )),
                        ),
                      );
                    }),
              )
            ]));
  }
}
