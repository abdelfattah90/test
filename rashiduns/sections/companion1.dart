import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';
import '../context/companion1text.dart';

Widget abobakrSections(BuildContext context, String sectionName,
    String sctionURL, bool isDarkMode) {
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

class Companion1 extends StatefulWidget {
  const Companion1({super.key});

  @override
  State<Companion1> createState() => _Companion1State();
}

class _Companion1State extends State<Companion1> {
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
              abobakrSections(context, '1 - مرافقته وصحبته النبى ﷺ',
                  'companion1sub1', _isDarkMode),
              abobakrSections(context, '2 - فى خلافته رضى الله عنه',
                  'companion1sub2', _isDarkMode),
              const SizedBox(height: 40),
            ],
          ),
          _isDarkMode),
    );
  }
}
