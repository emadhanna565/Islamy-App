// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islamy/ui/sura_details/sura_details.dart';

class VerseName extends StatelessWidget {
  String title;

  int index;

  VerseName({Key? key, required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsScreenArguments(title, index));
      },
      child: Container(
        alignment: Alignment(0, 0),
        child: Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
