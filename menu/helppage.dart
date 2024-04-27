import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class HelpPage extends StatelessWidget {
  final Color chosenColor;
  HelpPage({required this.chosenColor});

  Future<void> _launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'alejandroluzano12@gmail.com',
      query: 'subject=Feedback/Bug Report&body=Dear Support Team,%0D%0A%0D%0AI wanted to share my feedback on the app:%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0A%0D%0AThank you!%0D%0A',
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support'),
        backgroundColor: chosenColor,
      ),
      backgroundColor: chosenColor,
      body: Container(
        color: chosenColor,
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'We value your feedback!\n\nIf you have any suggestions, comments, or encounter any issues while using our app, please let us know.\nYour input helps us improve the app and provide a better experience for all users.\n\nHow to Provide Feedback:\n\n1. Email Us\nSend us an email at alejandroluzano12@gmail.com with your feedback or questions. We strive to respond to all inquiries promptly.\n\n\nClick The Button Below!',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      _launchEmail();
                    },
                    child: Text('Email Us'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '\n\n2. Bug Reporting\nIf you encounter any bugs or technical issues, please report them to us so that we can address them as quickly as possible. Use the bug reporting feature within the app or email us directly with a description of the issue and any relevant screenshots or error messages.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '\n\nWhat to Include in Your Feedback:\n\n ○ Detailed description of the problem or suggestion.\n\n ○ Steps to reproduce any issues encountered.\n\n ○ Device model and operating system version.\n\n ○ Screenshots or error messages (if applicable).\n\n\n Thank you for helping us make our app better!',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
