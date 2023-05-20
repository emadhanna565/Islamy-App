// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/ui/home/hadeth/hadeth.dart';
import 'package:islamy/ui/home/hadeth/hadeth_title.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) readHadethFile();
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/hadeth_header_image.png'),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          //margin: EdgeInsets.only(bottom: 4),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Text(AppLocalizations.of(context)!.hadeth_number,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          //margin: EdgeInsets.only(top: 8),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: allHadethList.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return HadethTitleWidget(allHadethList[index]);
                    },
                    itemCount: allHadethList.length,
                    separatorBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        height: 1.5,
                        color: Theme.of(context)
                            .bottomNavigationBarTheme
                            .selectedItemColor,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      );
                    },
                  ),
          ),
        )
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> hadethList = [];
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> splittedContentHadeth = fileContent.split('#');
    for (int i = 0; i < splittedContentHadeth.length; i++) {
      String singleHadethContent = splittedContentHadeth[i];
      List<String> lines = singleHadethContent.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
    }
    await Future.delayed(Duration(seconds: 3));
    allHadethList = hadethList;
    setState(() {});
  }
}
