// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:islamy/ui/home/hadeth/hadeth_tabs.dart';
import 'package:islamy/ui/home/quran/quran_tabs.dart';
import 'package:islamy/ui/home/radio/radio_tabs.dart';
import 'package:islamy/ui/home/sebha/sebha_tabs.dart';
import 'package:islamy/ui/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;
  List<Widget> tabs = [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          MyThemeData.themeMode == ThemeMode.light
              ? 'assets/images/background_image.png'
              : 'assets/images/dark_background_image.png',
        ),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),
        body: tabs[selectedTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(
                  AssetImage('assets/images/quran.png'),
                ),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage('assets/images/hadeth.png'),
              ),
              label: AppLocalizations.of(context)!.hadeth,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage('assets/images/sebha.png'),
              ),
              label: AppLocalizations.of(context)!.tasbeh,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage('assets/images/radio_blue.png'),
              ),
              label: AppLocalizations.of(context)!.radio,
            ),
          ],
        ),
      ),
    );
  }
}
