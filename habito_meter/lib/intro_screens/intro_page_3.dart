import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 280, 0, 0),
        child: Lottie.asset(
          'animations/3.json',
          repeat: true,
        ),
      ),
    );
  }
}
