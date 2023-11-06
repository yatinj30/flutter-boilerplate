import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/splash_screen/splash_cnt.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(
                fontSize: 34.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'welcome-back'.tr,
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
