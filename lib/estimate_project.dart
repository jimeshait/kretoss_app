import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/Contact/contact_page.dart';

class EstimateProject extends StatelessWidget {
  const EstimateProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 373,
      // width: 500,
      color: Color(0xff5956E9),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55.0),
              child: Text(
                'Let\'s Work Together',
                textScaleFactor: 1.2,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 15, color: Color(0xffFFDC60)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                'Need a successful project?',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, top: 18.0, right: 30.0, bottom: 15.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                        // height: 50,
                        // width: 180,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Contact_Page(
                                          isAppBar: true,
                                        )),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                'Estimate Project',
                                style: GoogleFonts.sourceSansPro(
                                    fontSize: 19, color: Color(0xff4169e1)),
                              ),
                            )))),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Expanded(
                    //   child: Image.network(
                    //     'https://kretoss.com/wp-content/themes/kretoss-technology/assets/media/others/laptop-poses.png',
                    //     height: 131,
                    //     width: 150,
                    //     fit: BoxFit.fitHeight,
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(
                          'https://kretoss.com/wp-content/themes/kretoss-technology/assets/media/others/chat-group.png',
                          height: 136,
                          width: 190,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Image.network(
                      'https://kretoss.com/wp-content/themes/kretoss-technology/assets/media/others/laptop-poses.png',
                      height: 136,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.network(
                        'https://kretoss.com/wp-content/themes/kretoss-technology/assets/media/others/bill-pay.png',
                        height: 136,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              indent: 20,
              endIndent: 25,
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
