//import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:habito_meter/onboarding_screen.dart';
import 'package:lottie/lottie.dart';
//import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return OnBoardingScreen();
      }));
    });
  }

  //late VideoPlayerController _controller;

  // @override
  // void initState() {
  //   super.initState();
  // _controller = VideoPlayerController.asset('assets/habitoMeter.mp4')
  //   ..initialize().then((value) {
  //     setState(() {});
  //   })
  //   ..setVolume(0.0);
  // _playVideo();
  //}

  // void _playVideo() async {
  //   _controller.play();

  //   await Future.delayed(const Duration(seconds: 2));
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
  //     return OnBoardingScreen();
  //   }));
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        //color: Colors.black,
        child: Center(
          child: Lottie.asset('animations/finalLogo.json', repeat: false),
        ),
      ),

      // backgroundColor: Colors.black,
      // body: Center(
      //   child: _controller.value.isInitialized
      //       ? AspectRatio(
      //           aspectRatio: _controller.value.aspectRatio,
      //           child: VideoPlayer(
      //             _controller,
      //           ))
      //       : Container(),
      // ),
    );
  }
}
