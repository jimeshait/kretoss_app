import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kretoss_webapp/chat.dart';
import 'package:url_launcher/url_launcher.dart';

class FloatingBtn extends StatefulWidget {
  const FloatingBtn({super.key});

  @override
  State<FloatingBtn> createState() => _FloatingBtnState();
}

class _FloatingBtnState extends State<FloatingBtn> {
  final String phoneNumber = '919687990806';
  // Replace with your phone number
  void _openWhatsAppChat() async {
    final whatsappUrl =
        'https://api.whatsapp.com/send/?phone=919687990806&text&type=phone_number&app_absent=0';
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  final _scrollController = ScrollController();
  bool _showFloatingButtons = false;

  @override
  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        _showFloatingButtons = true;
      });
    } else if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        _showFloatingButtons = false;
      });
    }
  }

  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final buttonHeight = 50.0;
    double offset = (_showFloatingButtons == true)
        ? screenHeight * 0.070
        : screenHeight * 0.001;
    return Stack(
      children: [
        Positioned(
          bottom: offset,
          left: 31.0,
          child: FloatingActionButton(
            heroTag: false,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero)),
            isExtended: true,
            onPressed: () {
              _openWhatsAppChat();
            },
            child: Image.network(
              'https://kretoss.com/wp-content/themes/kretoss-technology/assets/media/whatsapp-png.png',
              //color: Colors.white,
              height: 50,
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
        ),
        Positioned(
          bottom: offset,
          right: 1.0,
          child: FloatingActionButton(
            elevation: 0,
            heroTag: true,
            isExtended: true,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Chat()));
            },
            child: SvgPicture.asset(
              'assets/svg/chat.svg',
              color: Colors.white,
              height: 35,
            ),
            backgroundColor: Color(0xff5956e9),
          ),
        ),
      ],
    );
  }
}
