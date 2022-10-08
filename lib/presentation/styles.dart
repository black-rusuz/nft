import 'package:flutter/material.dart';

class Styles {
  // * MATERIAL COLOR
  static const int _bluePrimaryValue = 0xFF6B76F8;
  static const MaterialColor blue = MaterialColor(_bluePrimaryValue, {
    50: Color(0xFFEDEFFE),
    100: Color(0xFFD3D6FD),
    200: Color(0xFFB5BBFC),
    300: Color(0xFF979FFA),
    400: Color(0xFF818BF9),
    500: Color(_bluePrimaryValue),
    600: Color(0xFF636EF7),
    700: Color(0xFF5863F6),
    800: Color(0xFF4E59F5),
    900: Color(0xFF3C46F3),
  });

  static const int _blueAccentValue = 0xFFFFFFFF;
  static const MaterialColor blueAccent = MaterialColor(_blueAccentValue, {
    100: Color(0xFFFFFFFF),
    200: Color(_blueAccentValue),
    400: Color(0xFFD9DBFF),
    700: Color(0xFFBFC2FF),
  });

  // * COLORS
  static const Color bg = Color(0xff28293F);
  static const Color cardBg = Color(0xff383856);
  static const Color cardBorder = Color(0xff46466B);

  // * DIMENS
  static const double _borderRadiusValue = 10;
  static BorderRadius borderRadius = BorderRadius.circular(_borderRadiusValue);
}
