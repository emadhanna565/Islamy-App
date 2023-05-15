// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islamy/ui/hadet_details/hadeth_details.dart';
import 'package:islamy/ui/home/home_screen.dart';
import 'package:islamy/ui/splash_screen/splash_screen.dart';
import 'package:islamy/ui/sura_details/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SplashScreen.routeName: (_) => SplashScreen(),
        SuraDetails.routeName: (_) => SuraDetails(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen()
      },
      theme: ThemeData(
          primaryColor: Color(0xffB7935F),
          cardColor: Colors.white,
          progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.red),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
              color: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: Color(0xff242424),
                fontSize: 32,
              ),
              iconTheme: IconThemeData(color: Colors.black)),
          textTheme: TextTheme(
              bodyMedium: TextStyle(
            fontSize: 28,
          )),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
          )),
      locale: Locale('ar'),
    );
  }
}
