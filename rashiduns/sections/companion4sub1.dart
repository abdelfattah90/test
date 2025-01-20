import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';
import '../context/companion4textsub1.dart';

class Companion4sub1 extends StatefulWidget {
  const Companion4sub1({super.key});

  @override
  State<Companion4sub1> createState() => _Companion4sub1State();
}

class _Companion4sub1State extends State<Companion4sub1> {
  final PreferencesManager _preferencesManager = PreferencesManager();

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    await _preferencesManager.loadTheme();
    await _preferencesManager.loadFontSize();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSection(
          sectionTitle,
          sectionIndex,
          _preferencesManager.isDarkMode,
          colorStatusBarRashiduns,
          colorStatusBarRashidunsDark),
      body: pageContainer(
          context,
          bodyContant(
            [
              createParagraph(
                  paragraphTitle(t1[0], t1[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p1,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p2,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t2[0], t2[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p3,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t3[0], t3[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p4,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p5,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t4[0], t4[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p6,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p7,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t5[0], t5[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p8,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p9,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p10,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p11,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p12,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t6[0], t6[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p13,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p14,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p15,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t7[0], t7[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p16,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p17,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p18,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p19,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
            ],
          ),
          _preferencesManager.isDarkMode),
    );
  }
}
