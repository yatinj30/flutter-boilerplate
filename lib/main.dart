import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/localization/app_translation.dart';
import 'package:flutter_boilerplate/preferences/preference_key.dart';
import 'package:flutter_boilerplate/preferences/preference_management.dart';
import 'package:flutter_boilerplate/screens/splash_screen/splash_screen.dart';
import 'package:flutter_boilerplate/utils/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreference().initialAppPreference();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return GetMaterialApp(
          translations: AppTranslation(),
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          title: 'flutter-boiler-plate'.tr,
          theme: Themes().lightTheme,
          themeMode: AppPreference().getBool(PreferencesKey.themeMode)
              ? ThemeMode.dark
              : ThemeMode.light,
          darkTheme: Themes().darkTheme,
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      },
    );
  }
}
