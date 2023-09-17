import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 150, 60, 40),
            child: Center(
                child: Text(
              'Track your habits',
              style: TextStyle(
                  //fontFamily: 'GothamMedium',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Lottie.asset(
              'animations/3.json',
              repeat: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 95, 60, 60),
            child: Center(
                child: Text(
              'Visualize your progress in the calendar. Habito makes it easy to see how you\'re doing and where you\'re headed.',
              style: TextStyle(
                  //fontFamily: 'GothamMedium',
                  fontSize: 15),
              textAlign: TextAlign.center,
            )),
          ),
        ],
      ),
    );
  }
}
