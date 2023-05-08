import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import './pagescroll1.dart';
import './pagescroll2.dart';

class PageScroll extends StatefulWidget {
  const PageScroll({super.key});
  @override
  State<PageScroll> createState() => _PageScrollState();
}

class _PageScrollState extends State<PageScroll> {
  final PageController _controller = PageController(initialPage: 0);
  int activePage = 0;
  final List<Widget> _pages = [PageScroll1(), PageSroll2()];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          height: 1015,
          width: double.maxFinite,
          child: PageView.builder(
            physics: ScrollPhysics(),
            itemCount: _pages.length,
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 20),
              child: Row(
                children: List<Widget>.generate(
                    _pages.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: InkWell(
                            onTap: () {
                              _controller.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: activePage == index
                                  ? Color(0xff5956e9)
                                  : Color(0xffdbdeff),
                            ),
                          ),
                        )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
