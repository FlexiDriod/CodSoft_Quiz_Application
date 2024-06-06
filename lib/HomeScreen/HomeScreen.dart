// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upgrader/upgrader.dart';

import '../CustomizedAppBar/CustomizedAppBar.dart';
import 'CustomizedCategory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xff060870),
        // Change the status bar color
        statusBarIconBrightness: Brightness.light,
        // Change the status bar icons' color
        systemNavigationBarColor: Color(0xff060870),
        systemNavigationBarDividerColor: Color(0xff000000),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xff240E88),
        // 3C4CAD
        body: UpgradeAlert(
          showIgnore: true,
          showLater: true,
          shouldPopScope: () => true,
          dialogStyle: UpgradeDialogStyle.material,
          upgrader: Upgrader(
            debugLogging: true,
            debugDisplayAlways: true,
            languageCode: "en",
            countryCode: "IN",
            minAppVersion: "1.0.0",
            durationUntilAlertAgain: const Duration(milliseconds: 5000),
          ),
          child: const SingleChildScrollView(
              child: Column(
            children: [
              CustomizedAppBar(),
              CustomizedCategory(),
            ],
          )),
        ),
      ),
    );
  }
}
