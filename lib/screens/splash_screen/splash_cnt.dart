import 'package:flutter_boilerplate/screens/home_screen/home_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAll(const HomeScreen());
    });
  }
}
