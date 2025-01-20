import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';
import '../context/companion4text.dart';

Widget aliSections(BuildContext context, String sectionName, String sctionURL,
    bool isDarkMode) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, sctionURL),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              isDarkMode ? const Color(0xFFFFFFFF) : colorParagraphContentDark,
              isDarkMode ? const Color(0xFFFFFFFF) : colorParagraphContentDark,
              isDarkMode ? const Color(0xFFFFFFFF) : colorParagraphContentDark,
              isDarkMode ? const Color(0xFFF4F4F4) : colorParagraphContentDark,
              isDarkMode ? const Color(0xFFFFFFFF) : colorParagraphContentDark,
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              sectionName,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'swissr',
                color:
                    isDarkMode ? colorParagraphTitle : colorParagraphTitleDark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

class Companion4 extends StatefulWidget {
  const Companion4({super.key});

  @override
  State<Companion4> createState() => _Companion4State();
}

class _Companion4State extends State<Companion4> {
  bool _isDarkMode = false;
  @override
  void initState() {
    super.initState();
    loadTheme();
  }

  loadTheme() async {
    bool isDarkMode = await ThemePreferences.isDarkMode();
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSection(sectionTitle, sectionIndex, _isDarkMode,
          colorStatusBarRashiduns, colorStatusBarRashidunsDark),
      body: pageContainer(
          context,
          bodyContant(
            [
              const SizedBox(height: 10),
              aliSections(context, '1 - بطولاته فى حياة النبى ﷺ والغزوات',
                  'companion4sub1', _isDarkMode),
              aliSections(context, '2 - خلافته بعد مقتل عثمان وبداية الفتنة',
                  'companion4sub2', _isDarkMode),
              aliSections(context, '3 - الطريق لموقعة الجمل', 'companion4sub3',
                  _isDarkMode),
              aliSections(context, '4 - موقعة صفين واقتِتال الصحابة',
                  'companion4sub4', _isDarkMode),
              aliSections(context, '5 - التحكيم بين أمير المؤمنين عليٌ ومعاوية',
                  'companion4sub5', _isDarkMode),
              aliSections(context, '6 - مقتل أمير المؤمنين عليّ بن أبي طالب',
                  'companion4sub6', _isDarkMode),
              aliSections(context, '7 - الصلح بين المسلمين ونبوة رسول الله ﷺ',
                  'companion4sub7', _isDarkMode),
              const SizedBox(height: 40),
            ],
          ),
          _isDarkMode),
    );
  }
}
