import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ------------------------------------ Start Colors ------------------------------------ //

// BG
const colorBgSections = Color(0xFFF4F4F4);
const colorBgSectionsDark = Color(0xFF1F1F1F);

// StatusBar
const colorStatusBarSeira = Color(0xFF30806A);
const colorStatusBarSeiraDark = Color(0xFF2A3D38);
const colorStatusBarRashiduns = Color(0xFFA68E62);
const colorStatusBarRashidunsDark = Color(0xFF4B4536);

const colorStatusBarCompanion = Color(0xFF426F87);
const colorStatusBarCompanionDark = Color(0xFF334955);

// ParagraphContent
const colorParagraphContentDark = Color(0xFF2D2D2D);
const colorParagraphContentTextDark = Color(0xFFE0E0E0);

// ParagraphTitle
const colorParagraphTitle = Color(0xFFC95D36);
const colorParagraphTitleSpecial = Color(0xFF5D944E);
const colorParagraphTitleCompanion = Color(0xFF5F7FB6);

const colorParagraphTitleDark = Color(0xFFD59662);
const colorParagraphTitleSpecialDark = Color(0xFF609153);
const colorParagraphTitleRashidunsDark = Color(0xFF6FB0E5);

const colorIndexNumCompanion = Color(0xFF7C92B8);
const colorIndexNumCompanionDark = Color(0xFF3D485D);

const colorIndexNumCompanionwomen = Color(0xFF885A76);
const colorIndexNumCompanionwomenDark = Color(0xFF45303D);

// ------------------------------------ End Colors --------------------------------------- //

// ------------------------------------ Start Theme -------------------------------------- //

class ThemePreferences {
  static const String _themeKey = 'isDarkMode';

  static Future<bool> isDarkMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_themeKey) ?? true;
  }

  static Future<void> setDarkMode(bool isDarkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_themeKey, isDarkMode);
  }
}

// ------------------------------------ End Theme ------------------------------------------ //

// ------------------------------------ Start Font --------------------------------------- //
class FontPreferences {
  static const String _fontSizeKey = 'fontSize';

  static Future<int> getFontSize() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_fontSizeKey) ?? 16;
  }

  static Future<void> setFontSize(int fontSize) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(_fontSizeKey, fontSize);
  }
}
// ------------------------------------ End Font ------------------------------------- //

// --------------------------------- Start PreferencesManager  ----------------------- //

class PreferencesManager {
  bool _isDarkMode = false;
  int _fontSize = 16;

// Theme
  Future<void> loadTheme() async {
    bool isDarkMode = await ThemePreferences.isDarkMode();
    _updateDarkMode(isDarkMode);
  }

  void _updateDarkMode(bool isDarkMode) {
    _isDarkMode = isDarkMode;
  }

  bool get isDarkMode => _isDarkMode;

// Font
  Future<void> loadFontSize() async {
    int savedFontSize = await FontPreferences.getFontSize();
    _updateFontSize(savedFontSize);
  }

  void _updateFontSize(int savedFontSize) {
    _fontSize = savedFontSize;
  }

  int get fontSize => _fontSize;

  Future<void> saveFontSize(int value) async {
    await FontPreferences.setFontSize(value);
    _updateFontSize(value);
  }

  void updateFontSize(int value) {
    _fontSize = value;
  }
}

// --------------------------------- End PreferencesManager  ----------------------- //

// --------------------------------- Start Paragraph Content Widgets  ------------- //

Widget pageContainer(BuildContext context, Widget child, bool isDarkMode) {
  Color backgroundColor = isDarkMode ? colorBgSections : colorBgSectionsDark;
  return Container(
    color: backgroundColor,
    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
    height: MediaQuery.of(context).size.height,
    child: child,
  );
}

bodyContant(paragraphs) {
  return SingleChildScrollView(
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Column(children: paragraphs),
          const SizedBox(height: 40),
        ],
      ),
    ),
  );
}

paragraphTitle(
  String titleID,
  String title,
  int index, {
  bool isSpecial = false,
  bool isCompanion = false,
  required bool isDarkMode,
}) {
  Color textColor = isDarkMode ? colorParagraphTitle : colorParagraphTitleDark;

  if (isSpecial == true) {
    textColor = isDarkMode
        ? colorParagraphTitleSpecial
        : colorParagraphTitleSpecialDark;
  }

  if (isCompanion == true) {
    textColor = isDarkMode
        ? colorParagraphTitleCompanion
        : colorParagraphTitleRashidunsDark;
  }

  return Text.rich(
    TextSpan(
      children: [
        const TextSpan(
          text: '- ',
          style: TextStyle(
            fontFamily: 'droid',
            color: Color(0xFF818181),
            fontWeight: FontWeight.bold,
            fontSize: 13.0,
          ),
        ),
        TextSpan(
          text: title,
          style: TextStyle(
            fontFamily: 'dinnextregular',
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
          ),
        ),
      ],
    ),
  );
}

class CustomExpansionTile extends StatefulWidget {
  final Widget title;
  final List<Widget> children;
  final bool isDarkMode;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.children,
    required this.isDarkMode,
  });

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        widget.isDarkMode ? Colors.white : colorParagraphContentDark;
    Color collapsedBackgroundColor =
        widget.isDarkMode ? Colors.white : colorParagraphContentDark;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: ExpansionTile(
          backgroundColor: backgroundColor,
          collapsedBackgroundColor: collapsedBackgroundColor,
          onExpansionChanged: (value) {
            setState(() {
              isExpanded = value;
            });
          },
          trailing: Icon(
            Icons.expand_more,
            color:
                isExpanded ? const Color(0xFF484848) : const Color(0xFFBCBCBC),
          ),
          title: widget.title,
          children: widget.children,
        ),
      ),
    );
  }
}

class FadeInText extends StatefulWidget {
  final String content;
  final bool isDarkMode;
  final int fontSize;

  const FadeInText({
    super.key,
    required this.content,
    required this.isDarkMode,
    required this.fontSize,
  });

  @override
  State<FadeInText> createState() => _FadeInTextState();
}

class _FadeInTextState extends State<FadeInText>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1600),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color textColor =
        widget.isDarkMode ? Colors.black : colorParagraphContentTextDark;

    double fontSize = widget.fontSize.toDouble();

    return FadeTransition(
      opacity: _fadeAnimation,
      child: Container(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0, bottom: 10.0),
        alignment: Alignment.centerRight,
        child: SelectableText(
          widget.content,
          style: TextStyle(
            fontFamily: 'droid',
            fontSize: fontSize,
            height: 1.8,
            color: textColor,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

Widget paragraphContent(
  String content, {
  required bool isDarkMode,
  required int fontSize,
}) {
  return FadeInText(
      content: content, isDarkMode: isDarkMode, fontSize: fontSize);
}

Widget createParagraph(Widget title, List<Widget> children,
    {required bool isDarkMode}) {
  return CustomExpansionTile(
    title: title,
    isDarkMode: isDarkMode,
    children: children,
  );
}

// Dua
duaText(String content, bool isDarkMode) {
  Color color = isDarkMode ? const Color(0xFF252525) : const Color(0xFFFFFFFF);
  return Container(
    margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
    child: Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextSelectionTheme(
        data: const TextSelectionThemeData(
          selectionColor: Color(0xA7CBCBCB),
        ),
        child: SelectableText(
          content,
          style: TextStyle(
              fontFamily: 'droid', fontSize: 16.0, height: 1.8, color: color),
          textAlign: TextAlign.justify,
        ),
      ),
    ),
  );
}

dividerLine() {
  return const Divider(
    color: Color(0xFF686868),
    thickness: 0.5,
    indent: 20.0,
    endIndent: 20.0,
  );
}

// ------------------------------------ End Paragraph Content Widgets ---------------------- //

// ------------------------------------ Start AppBar -------------------------------------- //

appBarSection(String title, int index, bool isDarkMode, Color colorlight,
    Color colorDark) {
  Color backgroundColor = isDarkMode ? colorlight : colorDark;
  return PreferredSize(
    preferredSize: const Size.fromHeight(40.0),
    child: AppBar(
      iconTheme: const IconThemeData(color: Color(0xFFFFFFFF)),
      flexibleSpace: Container(color: backgroundColor),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.only(right: 7, top: 5),
              child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 15.0,
                  fontFamily: 'swissr',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          if (index != 0)
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  '$index',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
        ],
      ),
    ),
  );
}

// ------------------------------------ End AppBar -------------------------------------- //
