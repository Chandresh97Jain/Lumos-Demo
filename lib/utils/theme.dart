import 'package:flutter/material.dart';
import 'package:lumos/utils/colors.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppPallet.font, fontFamily: 'Lato'),
      bodyMedium: TextStyle(color: AppPallet.font, fontFamily: 'Lato'),
      bodySmall: TextStyle(color: AppPallet.font, fontFamily: 'Lato'),
      titleLarge: TextStyle(color: AppPallet.font, fontFamily: 'Lato'),
      titleMedium: TextStyle(color: AppPallet.font, fontFamily: 'Lato'),
      titleSmall: TextStyle(color: AppPallet.font, fontFamily: 'Lato'),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: AppPallet.font),
      titleTextStyle: TextStyle(color: AppPallet.font, fontSize: 20),
    ),
    iconTheme: IconThemeData(color: AppPallet.font),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppPallet.font,
        backgroundColor: AppPallet.font,
      ),
    ),
  );
}
