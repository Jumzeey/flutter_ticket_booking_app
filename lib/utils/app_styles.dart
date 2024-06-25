import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
Color text = const Color(0xFF3b3b3b);
Color bg = const Color(0xFFeeedf2);
Color orange = const Color(0xFF526799);
Color orange2 = const Color(0xFFF37B67);
Color kakiColor = const Color(0xFFd2bdb6);

class MyStyles {
  static Color primaryColor = primary;
  static Color textColor = text;
  static Color bgColor = bg;
  static Color orangeColor = orange;
  static Color orangeColor2 = orange2;
  static Color kaki = kakiColor;
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w400);
}
