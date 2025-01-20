import 'package:flutter/material.dart';
import '../utilities/utilities.dart';
import '../seira/context/section35text.dart';

class FontSettingScreen extends StatefulWidget {
  const FontSettingScreen({super.key});

  @override
  State<FontSettingScreen> createState() => _FontSettingScreenState();
}

class _FontSettingScreenState extends State<FontSettingScreen> {
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
      appBar: appBarSection('ضبط الخط', 0, _preferencesManager.isDarkMode,
          colorStatusBarSeira, colorStatusBarSeiraDark),
      body: SafeArea(
        child: Container(
          color: _preferencesManager.isDarkMode
              ? colorBgSections
              : colorBgSectionsDark,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  SliderTheme(
                    data: const SliderThemeData(
                      trackHeight: 10,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: _preferencesManager.fontSize.toDouble(),
                      min: 16.0,
                      max: 19.0,
                      divisions: 3,
                      onChanged: (value) {
                        setState(() {
                          _preferencesManager.updateFontSize(value.toInt());
                        });
                      },
                      onChangeEnd: (value) {
                        _preferencesManager.saveFontSize(value.toInt());
                      },
                      activeColor: colorParagraphTitleDark,
                      inactiveColor: const Color(0xFFD5D5D5),
                      thumbColor: colorStatusBarSeira,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 5,
                      right: 5,
                      left: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: _preferencesManager.isDarkMode
                          ? Colors.white
                          : colorParagraphContentDark,
                    ),
                    child: paragraphContent(
                      p12,
                      isDarkMode: _preferencesManager.isDarkMode,
                      fontSize: _preferencesManager.fontSize,
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
