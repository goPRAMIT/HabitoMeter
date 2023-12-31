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
            padding: const EdgeInsets.fromLTRB(60, 150, 60, 20),
            child: Center(
                child: Text(
              'Get them done',
              style: TextStyle(
                  //fontFamily: 'GothamMedium',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 20.0),
            child: Lottie.asset(
              'animations/2.json',
              repeat: false,
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 60.0),
            child: Text(
                'Are you ready to achieve your goals? Here\'s Habito for you to check-off your habits once you get them done.',
                style: TextStyle(
                  //fontFamily: 'GothamMedium',
                  fontSize: 15,
                ),
                textAlign: TextAlign.center),
          )),
        ],
      ),
    );
  }
}
