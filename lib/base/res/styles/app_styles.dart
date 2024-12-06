import "package:flutter/material.dart";

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xffeeedf2);
  static Color textColor = const Color(0xff3b3b3b);
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketOrange = const Color(0xfff37b67);
  static Color kakiColor = const Color(0xffd2bdb6);
  static TextStyle textStyle =
      TextStyle(fontSize: 16.0, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle3 =
      const TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 =
      const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);
}
