import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'azkars.dart';
import '../utilities/utilities.dart';

class AzkarMorning extends StatefulWidget {
  const AzkarMorning({super.key});

  @override
  State<AzkarMorning> createState() => _AzkarMorningState();
}

class _AzkarMorningState extends State<AzkarMorning> {
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
          title: const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'أذكار الصباح',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'swissr',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  _isDarkMode
                      ? const Color(0xFF5B7C9E)
                      : const Color(0xFF46607A),
                  _isDarkMode
                      ? const Color(0xFF5B7C9E)
                      : const Color(0xFF46607A),
                  _isDarkMode
                      ? const Color(0xFF6281A1)
                      : const Color(0xFF46607A),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          foregroundColor: const Color(0xFFFFFFFF),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/sunrise.png',
                height: 25.0,
                width: 25.0,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: NotificationListener<ScrollNotification>(
          child: Stack(
            children: [
              ScrollbarTheme(
                data: ScrollbarThemeData(
                  interactive: true,
                  thumbColor: MaterialStateProperty.all<Color>(
                    const Color(0xACBBBBBB),
                  ),
                  radius: const Radius.circular(2),
                  thickness: MaterialStateProperty.all<double>(7),
                ),
                child: Scrollbar(
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        color:
                            _isDarkMode ? colorBgSections : colorBgSectionsDark,
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      style: TextStyle(
                                          color: _isDarkMode
                                              ? const Color(0xFF2D2D2D)
                                              : const Color(0xFFEBEBEB),
                                          fontSize: 14),
                                      'عدد الاذكار: 21'),
                                  Text(
                                      style: TextStyle(
                                          color: _isDarkMode
                                              ? const Color(0xFF2D2D2D)
                                              : const Color(0xFFEBEBEB),
                                          fontSize: 14),
                                      'المدة : 8 - 10 دقائق'),
                                ],
                              ),
                            ),
                            const Column(
                              children: [
                                ZakrHeader(zakr: zakr_1, initialCounter: 1),
                                ZakrHeader(zakr: zakr_2, initialCounter: 1),
                                LineDivider(),
                                ZakrHeader(zakr: zakr_4, initialCounter: 3),
                                ZakrHeader(zakr: zakr_5, initialCounter: 3),
                                ZakrHeader(zakr: zakr_6, initialCounter: 3),
                                LineDivider(),
                                ZakrHeader(zakr: zakr_7, initialCounter: 1),
                                ZakrHeader(zakr: zakr_9, initialCounter: 1),
                                LineDivider(),
                                ZakrHeader(zakr: zakr_11, initialCounter: 3),
                                ZakrHeader(zakr: zakr_12, initialCounter: 1),
                                ZakrHeader(zakr: zakr_13, initialCounter: 7),
                                LineDivider(),
                                ZakrHeader(zakr: zakr_14, initialCounter: 3),
                                ZakrHeader(zakr: zakr_15, initialCounter: 3),
                                ZakrHeader(zakr: zakr_16, initialCounter: 3),
                                LineDivider(),
                                ZakrHeader(zakr: zakr_17, initialCounter: 3),
                                ZakrHeader(zakr: zakr_18, initialCounter: 1),
                                ZakrHeader(zakr: zakr_19, initialCounter: 3),
                                LineDivider(),
                                ZakrHeader(zakr: zakr_20, initialCounter: 1),
                                ZakrHeader(zakr: zakr_21, initialCounter: 3),
                                LineDivider(),
                                ZakrHeader(zakr: zakr_23, initialCounter: 3),
                                ZakrHeader(zakr: zakr_24, initialCounter: 3),
                                LineDivider(),
                                ZakrHeader(zakr: zakr_25, initialCounter: 10),
                                LineDivider(),
                                ZakrHeader(zakr: zakr_27, initialCounter: 100),
                                ZakrHeader(zakr: zakr_26, initialCounter: 100),
                                SizedBox(height: 50),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ZakrHeader extends StatefulWidget {
  final String zakr;
  final int initialCounter;
  final bool initialCopy;
  const ZakrHeader({
    super.key,
    required this.zakr,
    required this.initialCounter,
    this.initialCopy = false,
  });

  @override
  State<ZakrHeader> createState() => _ZakrHeaderState();
}

class _ZakrHeaderState extends State<ZakrHeader> {
  bool _isDarkMode = false;
  late int counter;
  late bool copy;

  @override
  void initState() {
    super.initState();
    loadTheme();
    counter = widget.initialCounter;
    copy = widget.initialCopy;
  }

  loadTheme() async {
    bool isDarkMode = await ThemePreferences.isDarkMode();
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  void decreaseNumber() {
    setState(() {
      counter--;
      if (counter < 0) {
        counter = 0;
      }
    });
  }

  void copyZakr() {
    setState(() {
      copy = true;
      Clipboard.setData(ClipboardData(text: widget.zakr));
    });

    Future.delayed(const Duration(milliseconds: 1200), () {
      setState(() {
        copy = widget.initialCopy;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        decreaseNumber();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: _isDarkMode
                    ? const Color(0xFFE3E3E3).withOpacity(0.3)
                    : const Color(0x00000000),
                spreadRadius: 10,
                blurRadius: 20,
                offset: const Offset(5, 15),
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                _isDarkMode
                    ? const Color(0xFFFFFFFF)
                    : colorParagraphContentDark,
                _isDarkMode
                    ? const Color(0xFFF8F8F8)
                    : colorParagraphContentDark,
                _isDarkMode
                    ? const Color(0xFFF5F5F5)
                    : colorParagraphContentDark,
                _isDarkMode
                    ? const Color(0xFFFFFFFF)
                    : colorParagraphContentDark,
              ],
            ),
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 15,
                bottom: 30,
                left: 15,
              ),
              child: Text(
                widget.zakr,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: _isDarkMode
                      ? const Color(0xFF252525)
                      : const Color(0xFFFFFFFF),
                  height: 1.8,
                  fontFamily: 'droid',
                  shadows: [
                    Shadow(
                      color: _isDarkMode
                          ? const Color(0xFFFFFFFF)
                          : const Color(0x00000000),
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 20.0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 7,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => copyZakr(),
                    child: Container(
                      width: 40,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        color: _isDarkMode
                            ? const Color(0xFFF4F4F4)
                            : const Color(0xFF373737),
                      ),
                      margin: const EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.copy,
                        color: copy
                            ? const Color(0xFF7192B3)
                            : const Color(0xFFA4A4A4),
                        size: 18,
                      ),
                    ),
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            color: counter == 0
                                ? const Color(0xFF67AEA2)
                                : const Color(0xFF7192B3),
                          ),
                        ),
                        if (counter == 0)
                          const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 18,
                          )
                        else
                          Text(
                            '$counter',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class LineDivider extends StatelessWidget {
  const LineDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFFCBCBCB),
      thickness: 1,
      indent: 50,
      endIndent: 50,
      height: 30,
    );
  }
}
