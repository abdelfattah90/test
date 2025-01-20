import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';
import '../context/section57text.dart';

class Section57 extends StatefulWidget {
  const Section57({super.key});

  @override
  State<Section57> createState() => _Section57State();
}

class _Section57State extends State<Section57> {
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
          colorStatusBarSeira,
          colorStatusBarSeiraDark),
      body: pageContainer(
          context,
          bodyContant(
            [
              createParagraph(
                  paragraphTitle(t1[0], t1[1], sectionIndex,
                      isSpecial: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p1,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p2,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p3,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t2[0], t2[1], sectionIndex,
                      isSpecial: true,
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
                  paragraphTitle(t3[0], t3[1], sectionIndex,
                      isSpecial: true,
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
                  paragraphTitle(t4[0], t4[1], sectionIndex,
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
                  paragraphTitle(t5[0], t5[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p13,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t6[0], t6[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p14,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p15,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p16,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t7[0], t7[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
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
              createParagraph(
                  paragraphTitle(t8[0], t8[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p20,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p21,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t9[0], t9[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p22,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p23,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t10[0], t10[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p24,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t11[0], t11[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p25,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t12[0], t12[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p26,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t13[0], t13[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p27,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t14[0], t14[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p28,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t15[0], t15[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p29,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t16[0], t16[1], sectionIndex,
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
                    paragraphContent(p34,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p35,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p36,
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
