import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:open_whatsapp/open_whatsapp.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsApp extends StatefulWidget {
  WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  final String phoneNumber = '919687990806';

  String _platformVersion = 'Unknown';

  void initState() {
    super.initState();
    initPlatformState();
  }

  void initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await FlutterOpenWhatsapp.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      // appBar: AppBar(
      //   title: const Text('Plugin example app'),
      // ),
      body: Center(
        child: MaterialButton(onPressed: () {
          FlutterOpenWhatsapp.sendSingleMessage(phoneNumber, "Hello");
        }

            //child: const Text('Open WhatsApp Chat'),
            ),
      ),
    ));
  }
}
