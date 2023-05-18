// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/ui/my_theme_data.dart';
import 'package:islamy/ui/sura_details/verse_content.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  SuraDetails({Key? key}) : super(key: key);

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments
        as SuraDetailsScreenArguments;
    if (chapterContent.isEmpty) {
      readFile(arg.index);
    }
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
              child: Text(
                arg.title,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Expanded(
                child: Card(
              margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
              color: Theme.of(context).cardTheme.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: chapterContent.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return VerseContent(chapterContent[index]);
                      },
                      itemCount: chapterContent.length,
                      separatorBuilder: (context, index) {
                        return Container(
                          color: Theme.of(context)
                              .bottomNavigationBarTheme
                              .selectedItemColor,
                          height: 1,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 45),
                        );
                      },
                    ),
            )),
          ],
        ),
      ),
    );
  }

  void readFile(int chapterIndex) async {
    await Future.delayed(Duration(seconds: 4));
    String text =
        await rootBundle.loadString('assets/files/${chapterIndex + 1}.txt');
    setState(() {
      chapterContent = text.split('\n');
    });
    //print (text);
  }
}

class SuraDetailsScreenArguments {
  //data class
  String title;
  int index;

  SuraDetailsScreenArguments(this.title, this.index);
}
