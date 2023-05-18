// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  String content;

  VerseContent(this.content);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
        ),
        alignment: Alignment.center,
        child: Text(
          content,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
