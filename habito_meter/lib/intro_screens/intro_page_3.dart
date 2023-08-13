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
            padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
            child: Lottie.asset(
              'animations/3.json',
              repeat: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 120, 60, 60),
            child: Center(
                child: Text('Track your habits',
                    style: TextStyle(
                        //fontFamily: 'GothamMedium',
                        fontSize: 18))),
          ),
        ],
      ),
    );
  }
}
