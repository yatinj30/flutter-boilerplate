import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/utils/app_constants.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    iconTheme: IconThemeData(
      color: appLightIconColor,
    ),
    textTheme: Typography().black.apply(
          fontFamily: 'OpenSans',
        ), // if you want to change the font for the whole app, make sure black typography is applied in light theme.
    // Override other theme properties here
  );

  final darkTheme = ThemeData.dark().copyWith(
    iconTheme: IconThemeData(
      color: appDarkIconColor,
    ),
    // Override other theme properties here
  );
}
