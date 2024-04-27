import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutPage extends StatelessWidget {
  final Color chosenColor;
  AboutPage({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: chosenColor,
      ),
      backgroundColor: chosenColor,
      body: Container(
        color: chosenColor,
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to MathForm!\n',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.info, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Version: 2.0.1',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.person, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Developer: QuinTech',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Contact Email: alejandroluzano12@gmail.com',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.phone, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Contact Number: +69674204100',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.web, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Website: ',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'www.instagram.com/_souljaah',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                '\n\nMathForm is designed to provide users with a comprehensive toolset for solving mathematical problems, learning new concepts, and mastering various mathematical topics. Whether you\'re a student, educator, or math enthusiast, our app aims to make math accessible and enjoyable for everyone.\n\n'
                    'Thank you for choosing MathForm! We hope you find it valuable in your mathematical journey. If you have any feedback or suggestions for improvement, please don\'t hesitate to reach out to us.\n\n'
                    'Happy calculating!!!\n\n\n'
                    'Key Features:\n\n'
                    '•  Access to a wide range of mathematical formulas and tools.\n\n'
                    '•  Offline functionality, allowing you to use the app anytime, anywhere.\n\n'
                    '•  User-friendly interface designed for easy navigation and seamless user experience.\n\n'
                    '•  Regular updates and improvements to enhance functionality and address user feedback.\n\n'
                    '•  Dedicated support team available to assist you with any questions or concerns.\n\n',
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AboutPage(chosenColor: Colors.blue),
  ));
}