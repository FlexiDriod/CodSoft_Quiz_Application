import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final dynamic showOnboarding;

  SplashController({required this.showOnboarding});

  @override
  void onInit() {
    super.onInit();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    Future.delayed(const Duration(seconds: 5), () {
      if (showOnboarding == false || showOnboarding == null) {
        Get.offAllNamed("/OnBoard");
      } else {
        Get.offAllNamed("/Home");
      }
    });
  }

  @override
  void onClose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.onClose();
  }
}
