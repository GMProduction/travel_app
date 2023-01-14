import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  var count = 0;

  @override
  void onInit()  {
    super.onInit();
    runsplash();
  }

  void runsplash() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.toNamed("/base");
    });
  }
}