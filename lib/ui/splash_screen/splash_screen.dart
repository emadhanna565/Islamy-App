// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:islamy/ui/home/home_screen.dart';
import 'package:islamy/ui/my_theme_data.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        child: Image.asset(
        MyThemeData.themeMode == ThemeMode.light
            ? 'assets/images/splash_background.png'
            : 'assets/images/dark_splash_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      )),
    );
  }
}
