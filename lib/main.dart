// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy/ui/hadeth_details/hadeth_details.dart';
import 'package:islamy/ui/home/home_screen.dart';
import 'package:islamy/ui/my_theme_data.dart';
import 'package:islamy/ui/splash_screen/splash_screen.dart';
import 'package:islamy/ui/sura_details/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: MyThemeData.themeMode,
      locale: Locale('en'),
    );
  }
}
