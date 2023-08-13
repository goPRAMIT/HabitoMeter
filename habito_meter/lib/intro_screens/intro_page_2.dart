import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(60.0, 220.0, 60.0, 60.0),
            child: Lottie.asset(
              'animations/2.json',
              repeat: false,
            ),
          ),
          Center(
              child: Text('Get them done',
                  style: TextStyle(fontFamily: 'GothamMedium', fontSize: 18))),
        ],
      ),
    );
  }
}
