// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'SplashController.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  final bool showOnboarding;

  const SplashScreen({super.key, required this.showOnboarding});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  late SplashController _splashController;

  @override
  void initState() {
    super.initState();
    _splashController = SplashController(showOnboarding: widget.showOnboarding);
    _splashController.checkForOnboarding(context);
  }

  @override
  void dispose() {
    // If your controller is managing resources, dispose them here
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("[DEBUG] SplashScreen received showOnboarding: ${widget.showOnboarding}");
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffF1B38F), Color(0xffB35F61)],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Lottie.asset(
                  'assets/Animation1743504851929.json',
                )
              ),
              const SizedBox(
                height: 60,
              ),
              const CircularProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xfff50057)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
