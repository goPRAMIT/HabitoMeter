import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      //backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 150, 60, 40),
            child: Center(
                child: Text(
              'Create new habits',
              //'Habito',
              style: TextStyle(
                  //fontFamily: 'GothamMedium',
                  //color: Colors.grey[400],
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(90.0, 20.0, 90.0, 50.0),
            child: Lottie.asset(
              'animations/1.json',
              repeat: true,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 60, 60),
            child: Center(
                child: Text(
              'Creating custom habits is the first step toward your journey of self-improvement and a healthier, happier you.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            )),
          ),
        ],
      ),
    );
  }
}
