import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habito_meter/onboarding_screen.dart';
import 'package:habito_meter/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
//import 'package:google_fonts/google_fonts.dart';

int? isViewed;

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Hive.initFlutter();
  await Hive.openBox("Habit_Database");
  //WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('onboarding_screen');

  runApp(const MyApp());

  await Future.delayed(const Duration(milliseconds: 1000));
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: isViewed != 0 ? OnBoardingScreen() : HomePage(),
        theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: GoogleFonts.comfortaaTextTheme(textTheme).copyWith(
              bodyMedium:
                  GoogleFonts.comfortaa(textStyle: textTheme.bodyMedium)),
        ));
  }
}
