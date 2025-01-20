import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utilities/utilities.dart';

class RadioList extends StatefulWidget {
  const RadioList({super.key});

  @override
  State<RadioList> createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final isDarkMode = await ThemePreferences.isDarkMode();
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  Future<void> _launchTelegram(String telegramLink) async {
    final Uri telegramUri = Uri.parse(telegramLink);
    await launchUrl(telegramUri);
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
          backgroundColor: _isDarkMode
              ? colorStatusBarRashiduns
              : colorStatusBarRashidunsDark,
          title: const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'إذاعـات قرآنيـة',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'swissr',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          centerTitle: true,
          foregroundColor: const Color(0xFFFFFFFF),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/radio-atheer.png',
                height: 25.0,
                width: 25.0,
              ),
            )
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          color: _isDarkMode ? colorBgSections : colorBgSectionsDark,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 15, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'إذاعـة القـرآن الكريـم من القاهرة',
                        style: TextStyle(
                          fontFamily: 'swissr',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: _isDarkMode
                              ? const Color(0xFF474747)
                              : const Color(0xFFF7F7F7),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchTelegram(
                              'https://t.me/Quran_Station?livestream');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            color: const Color(0xFF5184a5),
                            boxShadow: [
                              BoxShadow(
                                color: _isDarkMode
                                    ? const Color(0xFFBABABA)
                                    : const Color(0x00000000),
                                spreadRadius: 5,
                                blurRadius: 20,
                                offset: const Offset(5, 5),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'بث تلجرام',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'dinnextregular',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Image.asset(
                                'assets/images/telegram.png',
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'mp3quran');
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            _isDarkMode
                                ? const Color(0xFFF3F3F3)
                                : const Color(0xFF303030),
                            _isDarkMode
                                ? const Color(0xFFF3F3F3)
                                : const Color(0xFF303030),
                            _isDarkMode
                                ? const Color(0xFFFFFFFF)
                                : const Color(0xFF303030),
                            _isDarkMode
                                ? const Color(0xFFF7F7F7)
                                : const Color(0xFF303030),
                            _isDarkMode
                                ? const Color(0xFFF3F3F3)
                                : const Color(0xFF3B3B3B),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: _isDarkMode
                                ? const Color(0xFFDCDCDC)
                                : const Color(0x00000000),
                            spreadRadius: 5,
                            blurRadius: 40,
                            offset: const Offset(10, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'المكتبة الصوتية للقرآن الكريم',
                            style: TextStyle(
                              fontFamily: 'swissr',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: _isDarkMode
                                  ? const Color(0xFF474747)
                                  : const Color(0xFFB49330),
                            ),
                          ),
                          Image.asset(
                            'assets/images/quran-mp3.png',
                            width: 90,
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'radio-atheer');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            _isDarkMode
                                ? const Color(0xFFF3F3F3)
                                : const Color(0xFF303030),
                            _isDarkMode
                                ? const Color(0xFFF3F3F3)
                                : const Color(0xFF303030),
                            _isDarkMode
                                ? const Color(0xFFFFFFFF)
                                : const Color(0xFF303030),
                            _isDarkMode
                                ? const Color(0xFFF7F7F7)
                                : const Color(0xFF303030),
                            _isDarkMode
                                ? const Color(0xFFF3F3F3)
                                : const Color(0xFF3B3B3B),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: _isDarkMode
                                ? const Color(0xFFDCDCDC)
                                : const Color(0x00000000),
                            spreadRadius: 5,
                            blurRadius: 40,
                            offset: const Offset(10, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'راديو أثير',
                            style: TextStyle(
                              fontFamily: 'swissr',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: _isDarkMode
                                  ? const Color(0xFF474747)
                                  : const Color(0xFFB49330),
                            ),
                          ),
                          Image.asset(
                            'assets/images/radio-atheer.png',
                            width: 60,
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/ramadan/lamp_ramadan.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
