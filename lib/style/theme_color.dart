import 'package:flutter/material.dart';

class myStyle {
  static Color primaryColor = Color(0xfffa3e60);
  static Color fontColor = Colors.white;
  static ThemeData darkMood = ThemeData(
    appBarTheme: const AppBarTheme(
        elevation: 0,
        toolbarHeight: 50,
        color: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: 1.5)),
    scaffoldBackgroundColor: Color(0x6441436a),
  );
}
