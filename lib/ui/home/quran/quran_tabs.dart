// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:islamy/ui/home/quran/verse_name.dart';

class QuranScreen extends StatelessWidget {
  List<String> names = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1, child: Image.asset('assets/images/quran_header_logo.png')),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).primaryColor,
          margin: EdgeInsets.only(bottom: 4),
        ),
        Row(
          children: [
            Expanded(
                child: Text('اسم السوره',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center)),
            Container(
              width: 2,
              color: Theme.of(context).primaryColor,
            ),
            Expanded(
                child: Text('عدد الايات',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center)),
          ],
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).primaryColor,
          margin: EdgeInsets.only(top: 8),
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return VerseName(title: names[index], index: index);
            },
            itemCount: names.length,
            separatorBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 1.5,
                color: Theme.of(context).primaryColor,
              );
            },
          ),
        )
      ],
    );
  }
}
