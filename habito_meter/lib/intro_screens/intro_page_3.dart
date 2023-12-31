import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
              'Swipe Left',
              style: TextStyle(
                  //fontFamily: 'GothamMedium',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Lottie.asset(
              'animations/sw.json',
              repeat: true,
              //fit: BoxFit.scaleDown,
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 100.0),
            child: Text(
                'Swipe Left on your habits to modify them on the go! Now you can modify habits based upon your priority.',
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
