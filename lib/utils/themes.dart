import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/utils/app_constants.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    iconTheme: IconThemeData(
      color: appLightIconColor,
    ),
    // Override other theme properties here
  );

  final darkTheme = ThemeData.dark().copyWith(
    iconTheme: IconThemeData(
      color: appDarkIconColor,
    ),
    // Override other theme properties here
  );
}
