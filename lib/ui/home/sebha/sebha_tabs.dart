// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islamy/const.dart';
import 'package:islamy/ui/my_theme_data.dart';

class SebhaScreen extends StatefulWidget {
  SebhaScreen({Key? key}) : super(key: key);

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/sebha_image.png'),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('عدد التسبيحات'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            height: 70,
            width: 50,
            child: Text(
              '$counter',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              incrementCounter();
            },
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: MyThemeData.themeMode == ThemeMode.light
                    ? MyThemeData.lightPrimaryColor
                    : MyThemeData.darkAccentColor,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                'سبحان الله',
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }

  void incrementCounter() {
    counter++;
    setState(() {});
  }
}
