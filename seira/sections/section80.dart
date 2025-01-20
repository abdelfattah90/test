import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';
import '../context/section80text.dart';

class Section80 extends StatefulWidget {
  const Section80({super.key});

  @override
  State<Section80> createState() => _Section80State();
}

class _Section80State extends State<Section80> {
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
              Container(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 5, right: 10, left: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: _preferencesManager.isDarkMode
                      ? Colors.white
                      : colorParagraphContentDark,
                ),
                child: paragraphContent(p1,
                    isDarkMode: _preferencesManager.isDarkMode,
                    fontSize: _preferencesManager.fontSize),
              ),
              const SizedBox(height: 5),
              createParagraph(
                  paragraphTitle(t1[0], t1[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p2,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p3,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p4,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t2[0], t2[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p5,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p6,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t3[0], t3[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
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
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t5[0], t5[1], sectionIndex,
                      isSpecial: true,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
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
                      isSpecial: true,
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
              createParagraph(
                  paragraphTitle(t8[0], t8[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p20,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t9[0], t9[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p21,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p22,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t10[0], t10[1], sectionIndex,
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
                  paragraphTitle(t11[0], t11[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p26,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p27,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t12[0], t12[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p28,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                  ],
                  isDarkMode: _preferencesManager.isDarkMode),
              createParagraph(
                  paragraphTitle(t13[0], t13[1], sectionIndex,
                      isDarkMode: _preferencesManager.isDarkMode),
                  [
                    paragraphContent(p29,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p30,
                        isDarkMode: _preferencesManager.isDarkMode,
                        fontSize: _preferencesManager.fontSize),
                    paragraphContent(p31,
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
