import 'package:flutter/material.dart';
import 'package:habito_meter/splash_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

//int initScreen;

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox("Habit_Database");
  // WidgetsFlutterBinding.ensureInitialized();
  // var prefs = await SharedPreferences.getInstance();
  // var boolKey = 'isFirstTime';
  // var isFirstTime = prefs.getBool(boolKey) ?? true;
  //initScreen = await preferences.getInt('initScreen');
  //await preferences.setInt('initScreen', 1);
  runApp(const MyApp());
  //runApp(MaterialApp(home: isFirstTime? OnBoardingScreen(prefs, boolKey) : HomePage(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}
