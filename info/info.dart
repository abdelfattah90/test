import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utilities/utilities.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
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

  // Future<void> _launchWhatsApp(String phoneNumber) async {
  //   final Uri whatsAppUri = Uri(
  //     scheme: 'https',
  //     host: 'wa.me',
  //     path: phoneNumber,
  //   );
  //   await launchUrl(whatsAppUri);
  // }

  Future<void> _launchTelegramChat() async {
    const url = 'https://t.me/+201066078954';

    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  Future<void> _launchEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(emailUri);
  }

  Future<void> _launchReview(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSection('عن التطبيق', 0, _isDarkMode, colorStatusBarSeira,
          colorStatusBarSeiraDark),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: _isDarkMode ? colorBgSections : colorBgSectionsDark,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(children: [
              const SizedBox(height: 15),
              Image.asset(
                'assets/images/launcher_icon.png',
                fit: BoxFit.fitWidth,
                height: 140,
                width: 140,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Center(
                    child: Text(
                      'التطبيق عمل دعوى بدون أى أعلانات أو أرباح',
                      style: TextStyle(
                        color: _isDarkMode
                            ? const Color(0xFF474747)
                            : const Color(0xFFEBEBEB),
                        fontFamily: 'dinnextregular',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'مراجعات السيرة النبوية:',
                    style: TextStyle(
                      color: colorStatusBarSeira,
                      fontSize: 16,
                      fontFamily: 'dinnextregular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '-  كتاب السيرة النبوية قصص وعَبر للدكتور على الصلابى. ',
                    style: TextStyle(
                      color: _isDarkMode
                          ? const Color(0xFF474747)
                          : const Color(0xFFEBEBEB),
                      fontSize: 14,
                      fontFamily: 'dinnextregular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    color: _isDarkMode
                        ? const Color(0x79DBDBDB)
                        : colorStatusBarSeiraDark,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    height: 50,
                  ),
                  const Text(
                    'مراجعات سيرة الخلفاء الراشدون وأحداث الفتن:',
                    style: TextStyle(
                      color: colorStatusBarSeira,
                      fontSize: 16,
                      fontFamily: 'dinnextregular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '- قصة الإسلام د.راغب السرجاني',
                        style: TextStyle(
                          color: _isDarkMode
                              ? const Color(0xFF474747)
                              : const Color(0xFFEBEBEB),
                          fontSize: 13,
                          fontFamily: 'dinnextregular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          _launchReview('https://www.islamstory.com/');
                        },
                        child: const Text(
                          'islamstory.com',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF4A83B2),
                            fontSize: 14,
                            fontFamily: 'dinnextregular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '- المكتبة الشاملة',
                        style: TextStyle(
                          color: _isDarkMode
                              ? const Color(0xFF474747)
                              : const Color(0xFFEBEBEB),
                          fontSize: 13,
                          fontFamily: 'dinnextregular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          _launchReview('https://shamela.ws/');
                        },
                        child: const Text(
                          'shamela.ws',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF4A83B2),
                            fontSize: 14,
                            fontFamily: 'dinnextregular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Divider(
                    color: _isDarkMode
                        ? const Color(0x79DBDBDB)
                        : colorStatusBarSeiraDark,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    height: 50,
                  ),
                  const Text(
                    'مراجعات فتاوى أحكام الصيام:',
                    style: TextStyle(
                      color: colorStatusBarSeira,
                      fontSize: 16,
                      fontFamily: 'dinnextregular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '- الشيخ ابن باز رحمه الله',
                        style: TextStyle(
                          color: _isDarkMode
                              ? const Color(0xFF474747)
                              : const Color(0xFFEBEBEB),
                          fontSize: 13,
                          fontFamily: 'dinnextregular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          _launchReview('https://binbaz.org.sa/');
                        },
                        child: const Text(
                          'binbaz.org.sa',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF4A83B2),
                            fontSize: 14,
                            fontFamily: 'dinnextregular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '- صيد الفوائد',
                        style: TextStyle(
                          color: _isDarkMode
                              ? const Color(0xFF474747)
                              : const Color(0xFFEBEBEB),
                          fontSize: 13,
                          fontFamily: 'dinnextregular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          _launchReview('http://saaid.org/');
                        },
                        child: const Text(
                          'saaid.org',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF4A83B2),
                            fontSize: 14,
                            fontFamily: 'dinnextregular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Divider(
                    color: _isDarkMode
                        ? const Color(0x79DBDBDB)
                        : colorStatusBarSeiraDark,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    height: 50,
                  ),
                  const Text(
                    'مراجعات الأدعية والأذكار والأحاديث النبوية:',
                    style: TextStyle(
                      color: colorStatusBarSeira,
                      fontSize: 16,
                      fontFamily: 'dinnextregular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '- الدرر السنية',
                        style: TextStyle(
                          color: _isDarkMode
                              ? const Color(0xFF474747)
                              : const Color(0xFFEBEBEB),
                          fontSize: 13,
                          fontFamily: 'dinnextregular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          _launchReview('https://dorar.net/');
                        },
                        child: const Text(
                          'dorar.net',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF4A83B2),
                            fontSize: 14,
                            fontFamily: 'dinnextregular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '- إسلام ويب',
                        style: TextStyle(
                          color: _isDarkMode
                              ? const Color(0xFF474747)
                              : const Color(0xFFEBEBEB),
                          fontSize: 13,
                          fontFamily: 'dinnextregular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          _launchReview('https://www.islamweb.net/ar/');
                        },
                        child: const Text(
                          'islamweb.net',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF4A83B2),
                            fontSize: 14,
                            fontFamily: 'dinnextregular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Divider(
                    color: _isDarkMode
                        ? const Color(0x79DBDBDB)
                        : colorStatusBarSeiraDark,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    height: 50,
                  ),
                  Row(
                    children: [
                      Text(
                        'إذاعات قرانية - راديو أثير',
                        style: TextStyle(
                          color: _isDarkMode
                              ? const Color(0xFF474747)
                              : const Color(0xFFEBEBEB),
                          fontSize: 14,
                          fontFamily: 'dinnextregular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          _launchReview('https://www.atheer-radio.com/home');
                        },
                        child: const Text(
                          'atheer-radio.com',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF4A83B2),
                            fontSize: 14,
                            fontFamily: 'dinnextregular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'التاريخ الهجرى والميلادى',
                        style: TextStyle(
                          color: _isDarkMode
                              ? const Color(0xFF474747)
                              : const Color(0xFFEBEBEB),
                          fontSize: 14,
                          fontFamily: 'dinnextregular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          _launchReview('https://datehijri.com/');
                        },
                        child: const Text(
                          'datehijri.com',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF4A83B2),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'dinnextregular',
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: _isDarkMode
                        ? const Color(0x79DBDBDB)
                        : colorStatusBarSeiraDark,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    height: 50,
                  ),
                  Text(
                    'للتواصل والأقتراحات Creved للتقنية',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'dinnextregular',
                      color: _isDarkMode
                          ? const Color(0xFF474747)
                          : const Color(0xFFEBEBEB),
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _launchEmail('crevedweb@gmail.com');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Image.asset(
                            'assets/images/gmail.png',
                            width: 35,
                            height: 35,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          _launchTelegramChat();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Image.asset(
                            'assets/images/telegram.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF438888),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      onPressed: () {
                        _launchReview(
                            'https://play.google.com/store/apps/details?id=com.seira.seiranabawayaa');
                      },
                      child: const Text(
                        'ساهم فى نشر وتقيم التطبيق',
                        style: TextStyle(
                            fontFamily: 'dinnextregular',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
