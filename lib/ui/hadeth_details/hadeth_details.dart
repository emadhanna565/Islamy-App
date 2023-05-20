// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:islamy/ui/home/hadeth/hadeth.dart';
import 'package:islamy/ui/my_theme_data.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  HadethDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      alignment: AlignmentDirectional.center,
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
            'اسلامي',
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 8),
              child: Text(arg.title),
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(arg.content, textAlign: TextAlign.center,),),
            ),
          ],
        ),
      ),
    );
  }
}
