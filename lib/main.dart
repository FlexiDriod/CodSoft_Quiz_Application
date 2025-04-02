//^ Flutter Built-in Packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//^ Third-party Packages
import 'package:shared_preferences/shared_preferences.dart';

//^ Local File Imports
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



class TechQuizzerApp extends StatelessWidget{

  final bool showOnboarding;
  const TechQuizzerApp({super.key, required this.showOnboarding});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    title: "TechQuizzer",
    initialRoute: "/Splash",
    debugShowCheckedModeBanner: false,
    routes: _getRoutes(),
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
    ),
  );
  }

  /*
  &  --------------------------------------------------------------
  * In Dart, a List is an ordered collection of items, 
  * the square brackets [] are used to define a list. 
  * Each item in the list can be accessed by its index.
  &  --------------------------------------------------------------
  */
  
  Map<String, WidgetBuilder> _getRoutes() {
    return {
      '/Splash': (context) => SplashScreen(showOnboarding: showOnboarding),
      '/OnBoard': (context) => const OnBoardingScreen(),
      '/Home': (context) => const HomeScreen(),
      '/LinuxScreen': (context) => const LinuxQuizScreen(),
      '/CppQuizScreen': (context) => const CppQuizScreen(),
      '/JavaQuizScreen': (context) => const JavaQuizScreen(),
      '/PythonQuizScreen': (context) => const PythonQuizScreen(),
      '/FlutterQuizScreen': (context) => const FlutterQuizScreen(),
      '/PgSQLQuizScreen': (context) => const PgSqlQuizScreen(),
      '/PhpQuizScreen': (context) => const PhpQuizScreen(),
    };
  }
}

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  /*
   &  -------------------------------------------------------------------------
   * By default, Flutter initializes the bindings lazily
   * when the first widget is rendered.
   * However, some plugins and platform calls require the binding
   * to be initialized before runApp().
   * Using "WidgetsFlutterBinding.ensureInitialized()" ensures that all necessary
   * platform channels and services are set up before further execution.
   &  -------------------------------------------------------------------------
  */

  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool showOnboarding = preferences.getBool('showOnboarding') ?? true;
  debugPrint("[DEBUG] showOnboarding value: $showOnboarding");

  /*
  &  -------------------------------------------------------------------------
   * "Shared Preferences" is a simple key-value store used to persist data
   * on the device. It's typically used for saving small amounts of data,
   * like user settings, login states, or preferences, that need to be
   * accessible even after the app is closed or restarted.
   *
   * Data stored in Shared Preferences is not encrypted.
   * If security is a concern, consider using Flutter’s
   * "flutter_secure_storage" package instead.
  &  -------------------------------------------------------------------------
  */

  /*
  &  -------------------------------------------------------------------------
   * Set the navigation bar color
   *
   * SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
   * systemNavigationBarColor: Colors.blue,
   * ));
   *
   * Set the Status bar color
   *
   * SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   * statusBarColor: Colors.transparent, // Make the status bar transparent
   * ));
  &  -------------------------------------------------------------------------
   */

  // Lock Screen Orientation to Portrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /*
  &  -------------------------------------------------------------------------
   * "SystemChrome" is part of the services package and
   * provides a way to interact with system-level features like
   * status bar, system navigation bar, screen orientation, etc.
  &  ------------------------------------------------------------------------- 
  */

  runApp( TechQuizzerApp(showOnboarding: showOnboarding));
}
