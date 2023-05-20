import 'package:flutter/material.dart';

class MyThemeData {
  static const lightPrimaryColor = Color(0xffB7935F);
  static const darkPrimaryColor = Color(0xff141A2E);
  static const lightMainTextColor = Color(0xff242424);
  static const darkMainTextColor = Color(0xffF8F8F8);
  static const darkAccentColor = Color(0xfffacc1d);
  static var lightTheme = ThemeData(
    primaryColor: lightPrimaryColor,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: lightPrimaryColor),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: lightMainTextColor,
        fontSize: 32,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: const TextTheme(
        headline3: TextStyle(
          //screen title
          color: lightMainTextColor,
          fontSize: 32,
        ),
        headline5: TextStyle(
          fontSize: 24,
        color: lightMainTextColor,
      ),
      bodyText1: TextStyle(
        // sub header
        fontSize: 24,
        color: lightMainTextColor,
      ),
      bodyText2: TextStyle(
        fontSize: 20,
        color: lightMainTextColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
  );
  static var darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: lightPrimaryColor),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: darkMainTextColor,
          fontSize: 32,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: const TextTheme(
          headline3: TextStyle(
            color: darkMainTextColor,
            fontSize: 32,
          ),
          headline5: TextStyle(
            fontSize: 24,
            color: darkMainTextColor,
          ),
          bodyText1: TextStyle(
            fontSize: 24,
            color: darkMainTextColor,
          ),
          bodyText2: TextStyle(
            fontSize: 20,
            color: darkMainTextColor,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: darkAccentColor,
        unselectedItemColor: Colors.white,
      ),
      cardTheme: const CardTheme(
        color: darkPrimaryColor,
      ));
  static ThemeMode themeMode = ThemeMode.dark;
}
