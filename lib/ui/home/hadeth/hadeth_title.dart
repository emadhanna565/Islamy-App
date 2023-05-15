// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islamy/ui/home/hadeth/hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, 0),
      child: Text(
        hadeth.title,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
