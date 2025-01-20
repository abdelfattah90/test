import 'package:flutter/material.dart';
import '../utilities/utilities.dart';

import 'seira_list.dart';

class Sections {
  Sections({
    required this.nums,
    required this.url,
  });

  String nums;
  String url;
}

List<Sections> generateSections(int sectionsNumber) {
  return List<Sections>.generate(sectionsNumber, (int index) {
    return Sections(
      nums: '${index + 1}',
      url: 'section${index + 1}',
    );
  });
}

final List<Sections> _data = generateSections(80);

class SeiraSectionsComponent extends StatefulWidget {
  const SeiraSectionsComponent({
    super.key,
  });

  @override
  State<SeiraSectionsComponent> createState() => _SeiraSectionsComponentState();
}

class _SeiraSectionsComponentState extends State<SeiraSectionsComponent> {
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 3,
          crossAxisCount: 1,
          childAspectRatio: 8,
        ),
        itemCount: _data.length,
        itemBuilder: (context, index) {
          final sectionsText = sections[index].split('\n');
          final firstLine = sectionsText[0];
          final secondLine = sectionsText.length > 1 ? sectionsText[1] : '';

          Color containerColor;
          if (index >= 0 && index <= 7) {
            containerColor =
                _isDarkMode ? const Color(0xFF8B8B8B) : const Color(0xFF575757);
          } else if (index >= 8 && index <= 24) {
            containerColor =
                _isDarkMode ? const Color(0xFFB99E6D) : const Color(0xFF827357);
          } else if (index >= 25 && index <= 52) {
            containerColor =
                _isDarkMode ? const Color(0xFF5F7FB6) : const Color(0xFF3D506F);
          } else if (index >= 53 && index <= 61) {
            containerColor =
                _isDarkMode ? const Color(0xFF32AA88) : const Color(0xFF2E7360);
          } else if (index >= 62 && index <= 80) {
            containerColor =
                _isDarkMode ? const Color(0xFF966F9F) : const Color(0xFF5F4E63);
          } else {
            containerColor =
                _isDarkMode ? const Color(0xFF966F9F) : const Color(0xFF966F9F);
          }

          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, _data[index].url),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      _isDarkMode
                          ? const Color(0xFFFFFFFF)
                          : colorParagraphContentDark,
                      _isDarkMode
                          ? const Color(0xFFFFFFFF)
                          : colorParagraphContentDark,
                      _isDarkMode
                          ? const Color(0xFFFAFAFA)
                          : const Color(0xFF2E2E2E),
                      _isDarkMode
                          ? const Color(0xFFFFFFFF)
                          : colorParagraphContentDark,
                    ],
                  ),
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(3.0),
                            bottomRight: Radius.circular(3.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            _data[index].nums,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 11,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Align(
                          alignment: secondLine.isNotEmpty
                              ? Alignment.centerRight
                              : Alignment.centerRight,
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: _isDarkMode
                                    ? const Color(0xFFD66969)
                                    : const Color(0xFFE0E0E0),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'dinnextregular',
                              ),
                              children: [
                                TextSpan(
                                  text: firstLine,
                                  style: TextStyle(
                                    color: secondLine.isNotEmpty
                                        ? (_isDarkMode
                                            ? const Color(0xFF484848)
                                            : const Color(0xFFEAEAEA))
                                        : (_isDarkMode
                                            ? const Color(0xFF484848)
                                            : const Color(0xFFEAEAEA)),
                                    // 0xFFD59662

                                    fontSize: 15,
                                    fontFamily: 'dinnextregular',
                                  ),
                                ),
                                if (secondLine.isNotEmpty) ...[
                                  const TextSpan(
                                    text: ' - ',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF848181),
                                    ),
                                  ),
                                  TextSpan(
                                    text: secondLine,
                                    style: TextStyle(
                                        height: 1.5,
                                        fontSize: 14,
                                        color: _isDarkMode
                                            ? const Color(0xFF848181)
                                            : const Color(0xFFABABAB),
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}

Widget mainTitles(
    String text, Color colorLight, Color colorDark, bool isDarkMode) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          color: isDarkMode ? colorLight : colorDark,
          borderRadius: const BorderRadius.all(Radius.circular(3)),
        ),
        height: 20,
        width: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 7, right: 10, bottom: 10),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'dinnextregular',
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            color:
                isDarkMode ? const Color(0xFF3A3A3A) : const Color(0xFFEBEBEB),
          ),
        ),
      ),
    ],
  );
}

class SeiraHome extends StatefulWidget {
  const SeiraHome({super.key});

  @override
  State<SeiraHome> createState() => _SeiraHomeState();
}

class _SeiraHomeState extends State<SeiraHome> {
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          leading: BackButton(
            color: const Color(0xFFFFFFFF),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor:
              _isDarkMode ? colorStatusBarSeira : colorStatusBarSeiraDark,
          title: const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'السيــــرة النبـــويـة',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'swissr',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(),
          foregroundColor: const Color(0xFFFFFFFF),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/prophet_mohamed.png',
                height: 25.0,
                width: 25.0,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: NotificationListener<ScrollNotification>(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: _isDarkMode ? colorBgSections : colorBgSectionsDark,
            child: ScrollbarTheme(
              data: ScrollbarThemeData(
                interactive: true,
                thumbColor: MaterialStateProperty.all<Color>(
                  _isDarkMode
                      ? const Color(0xACBBBBBB)
                      : const Color(0x3CBBBBBB),
                ),
                radius: const Radius.circular(2),
                thickness: MaterialStateProperty.all<double>(8),
              ),
              child: Scrollbar(
                thumbVisibility: true,
                child: SingleChildScrollView(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const SeiraSectionsComponent(),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(children: [
                            mainTitles(
                                'أحوال العرب وحياة النبى ﷺ قبل البعثة.',
                                const Color(0xFF6B6B6B),
                                const Color(0xFF575757),
                                _isDarkMode),
                            mainTitles(
                                'البعثة النبوية والدعوة والهجرة.',
                                const Color(0xFFB99E6D),
                                const Color(0xFF827357),
                                _isDarkMode),
                            mainTitles(
                                'بناء دولة المدينة، وبدر حتى الأحزاب. ',
                                const Color(0xFF5F7FB6),
                                const Color(0xFF3D506F),
                                _isDarkMode),
                            mainTitles(
                                'صلح الحديبية وخيبر ومؤتة.',
                                const Color(0xFF32AA88),
                                const Color(0xFF2E7360),
                                _isDarkMode),
                            mainTitles(
                                'فتح مكة حتى وفاة النبى ﷺ',
                                const Color(0xFF966F9F),
                                const Color(0xFF5F4E63),
                                _isDarkMode),
                          ]),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
