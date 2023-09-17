import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habito_meter/onboarding_screen.dart';
import 'package:habito_meter/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:google_fonts/google_fonts.dart';

int? isViewed;

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox("Habit_Database");
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('onboarding_screen');
  runApp(const MyApp());
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
