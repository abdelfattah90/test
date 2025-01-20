import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';
import '../context/companion1textsub2.dart';

class Companion1sub2 extends StatefulWidget {
  const Companion1sub2({super.key});

  @override
  State<Companion1sub2> createState() => _Companion1sub2State();
}

class _Companion1sub2State extends State<Companion1sub2> {
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
                  paragraphTitle(t11[0], t11[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p23,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p24,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p25,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t12[0], t12[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p26,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p27,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p28,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p29,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t13[0], t13[1], sectionIndex,
                      isCompanion: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p30,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p31,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p32,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p33,
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
