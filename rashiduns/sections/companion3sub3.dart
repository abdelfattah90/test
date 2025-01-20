import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';
import '../context/companion3textsub3.dart';

class Companion3sub3 extends StatefulWidget {
  const Companion3sub3({super.key});

  @override
  State<Companion3sub3> createState() => _Companion3sub3State();
}

class _Companion3sub3State extends State<Companion3sub3> {
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
                  paragraphTitle(t13[0], t13[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p25,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p26,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t14[0], t14[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p27,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p28,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t15[0], t15[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p29,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p30,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t16[0], t16[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p31,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p32,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t17[0], t17[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p33,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p34,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t18[0], t18[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p35,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p36,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t19[0], t19[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p37,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p38,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p39,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t20[0], t20[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p40,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t21[0], t21[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p41,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t22[0], t22[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p42,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t23[0], t23[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p43,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p44,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t24[0], t24[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p45,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p46,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p47,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p48,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p49,
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
