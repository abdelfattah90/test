import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';
import '../context/companion5text.dart';

class Companion5 extends StatefulWidget {
  const Companion5({super.key});

  @override
  State<Companion5> createState() => _Companion5State();
}

class _Companion5State extends State<Companion5> {
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
        colorStatusBarRashidunsDark,
      ),
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
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
            ],
          ),
          _preferencesManager.isDarkMode),
    );
  }
}
