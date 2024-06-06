import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomeScreen/HomeScreen.dart';
import 'OnboardingScreen/Onboarding.dart';
import 'QuizScreens/CppQuizScreen.dart';

import 'QuizScreens/FlutterQuizScreen.dart';
import 'QuizScreens/JavaQuizScreen.dart';
import 'QuizScreens/LinuxQuizScreen.dart';
import 'QuizScreens/PgSqlQuizScreen.dart';
import 'QuizScreens/PhpQuizScreen.dart';
import 'QuizScreens/PythonQuizScreen.dart';
import 'SplashScreen/SplashScreen.dart';

dynamic showOnboarding;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  showOnboarding = preferences.getBool('showOnboarding');
  await preferences.setBool("showOnboarding", true);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(GetMaterialApp(
    title: "TechQuizzer",
    initialRoute: "/Splash",
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(
          name: "/Splash",
          page: () => SplashScreen(showOnboarding: showOnboarding)),
      GetPage(name: "/OnBoard", page: () => const OnBoardingScreen()),
      GetPage(name: "/Home", page: () => const HomeScreen()),
      GetPage(name: "/LinuxScreen", page: () => const LinuxQuizScreen()),
      GetPage(name: "/CppQuizScreen", page: () => const CppQuizScreen()),
      GetPage(name: "/JavaQuizScreen", page: () => const JavaQuizScreen()),
      GetPage(name: "/PythonQuizScreen", page: () => const PythonQuizScreen()),
      GetPage(
          name: "/FlutterQuizScreen", page: () => const FlutterQuizScreen()),
      GetPage(name: "/PgSQLQuizScreen", page: () => const PgSqlQuizScreen()),
      GetPage(name: "/PhpQuizScreen", page: () => const PhpQuizScreen()),
    ],
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
    ),
  ));
}
