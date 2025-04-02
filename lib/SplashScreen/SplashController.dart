// ignore_for_file: file_names, unnecessary_null_comparison, curly_braces_in_flow_control_structures, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashController {

  final bool showOnboarding;
  SplashController({required this.showOnboarding});

  void checkForOnboarding(BuildContext context) {

    debugPrint("[DEBUG] checkForOnboarding() received showOnboarding: $showOnboarding");


    /*
  & ---------------------------------------------------------------------------
   * When the system UI mode is set to "immersiveSticky",
   * the system hides the system bars (status bar and navigation bar) 
   * to provide a full-screen experience.
  & ---------------------------------------------------------------------------
  */
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky
    );

    Future.delayed(
      const Duration(seconds: 5), () {
        if (context.mounted) {
          if (showOnboarding == false || showOnboarding == null) {
            Navigator.pushReplacementNamed(context, "/OnBoard");
          }
          else {
            Navigator.pushReplacementNamed(context, "/Home");
          }
        }
      }
    );
  }
}