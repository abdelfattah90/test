import 'package:flutter/material.dart';

import '../utilities/utilities.dart';

Widget rashidunsWidget(
    BuildContext context,
    String sectionName,
    String? sectionSubTitle,
    String sctionURL,
    String sectionPhoto,
    bool isDarkMode) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, sctionURL),
    child: Stack(children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.only(right: 10, top: 45, bottom: 40),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: isDarkMode
                  ? const Color(0xFFDEDEDE)
                  : const Color(0x00000000),
              spreadRadius: 5,
              blurRadius: 20,
              offset: const Offset(5, 20),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(15),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              isDarkMode ? const Color(0xFFFFFFFF) : colorParagraphContentDark,
              isDarkMode ? const Color(0xFFFFFFFF) : colorParagraphContentDark,
              isDarkMode ? const Color(0xFFFFFFFF) : colorParagraphContentDark,
              isDarkMode ? const Color(0xFFF4F4F4) : colorParagraphContentDark,
              isDarkMode ? const Color(0xFFFFFFFF) : colorParagraphContentDark,
            ],
          ),
        ),
        child: Text(
          sectionName,
          style: TextStyle(
            fontSize: 16,
            color:
                isDarkMode ? const Color(0xFF2D2D2D) : const Color(0xFFFBFBFB),
            fontWeight: FontWeight.bold,
            fontFamily: 'swissr',
          ),
        ),
      ),
      Positioned(
        bottom: 15,
        right: 10,
        child: Text(
          sectionSubTitle!,
          style: TextStyle(
            color: isDarkMode ? colorParagraphTitle : colorParagraphTitleDark,
            fontFamily: 'swissr',
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
        top: 22,
        left: 10,
        child: Image.asset(
          'assets/images/rashiduns/$sectionPhoto',
          width: 77,
          height: 77,
        ),
      ),
    ]),
  );
}

class Rashiduns extends StatefulWidget {
  const Rashiduns({super.key});

  @override
  State<Rashiduns> createState() => _RashidunsState();
}

class _RashidunsState extends State<Rashiduns> {
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
        preferredSize: const Size.fromHeight(5.0),
        child: AppBar(
            backgroundColor: _isDarkMode
                ? colorStatusBarRashiduns
                : colorStatusBarRashidunsDark,
            automaticallyImplyLeading: false),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: _isDarkMode ? colorBgSections : colorBgSectionsDark,
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            'الخـلفــــاء الــراشـــــــدون',
                            style: TextStyle(
                              fontFamily: 'swissr',
                              fontSize: 18,
                              color: _isDarkMode
                                  ? const Color(0xFF565354)
                                  : const Color(0xFFEBEBEB),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_rounded,
                              color: colorStatusBarRashiduns,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(children: [
                      rashidunsWidget(context, 'أبـو بـكـــر الصـديــــق', '',
                          'companion1', 'abobakr.png', _isDarkMode),
                      const SizedBox(height: 20),
                      rashidunsWidget(context, 'عـمــــر بـن الخـطــــاب', '',
                          'companion2', 'omar.png', _isDarkMode),
                      const SizedBox(height: 20),
                      rashidunsWidget(
                          context,
                          'عـثـمـــان بـن عـفــــان',
                          'خلافته وفتنه مقتله',
                          'companion3',
                          'usman.png',
                          _isDarkMode),
                      const SizedBox(height: 20),
                      rashidunsWidget(
                          context,
                          'عَـلِــي بن أبـي طـالــــب',
                          'خلافته وأحداث الفتن الكبرى',
                          'companion4',
                          'ali.png',
                          _isDarkMode),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
