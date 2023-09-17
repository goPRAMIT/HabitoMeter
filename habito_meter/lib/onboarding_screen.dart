import 'package:flutter/material.dart';
import 'package:habito_meter/intro_screens/intro_page_1.dart';
import 'package:habito_meter/intro_screens/intro_page_2.dart';
import 'package:habito_meter/intro_screens/intro_page_3.dart';
import 'package:habito_meter/intro_screens/intro_page_4.dart';
import 'package:habito_meter/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool onLastPage = false;
  PageController _controller = PageController();

  //late final SharedPreferences prefs;
  //late final String boolKey;

  _storeOnBoardInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onboarding_screen', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    //prefs.setBool(boolKey, false);
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
            });
          },
          controller: _controller,
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
            IntroPage4(),
          ],
        ),

        //dot indicator
        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //     border: Border.all(),
                //   ),

                // ),

                //skip
                GestureDetector(
                    onTap: () async {
                      _controller.animateToPage(3,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                      await _storeOnBoardInfo();
                    },
                    // child: Text(
                    //   'Skip',
                    //   style: TextStyle(fontSize: 18),
                    // )),

                    child: Container(
                      //margin: const EdgeInsets.all(30.0),
                      //padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Skip',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.amber,
                    dotColor: Colors.grey.shade200,
                  ),
                ),

                //next
                onLastPage
                    ? GestureDetector(
                        onTap: () async {
                          await _storeOnBoardInfo();
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Done',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(9, 8, 9, 8),
                            child: Text(
                              ' Next',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )),
              ],
            ))
      ],
    ));
  }
}
