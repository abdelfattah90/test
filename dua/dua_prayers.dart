import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 = 'يا ربِّ لكَ الحمدُ كما ينبَغي لجلالِ وجهكَ ولعظيمِ سلطانِكَ.';
String p2 =
    'اللهم لكَ أسلمتُ وبكَ آمنتُ وعليك توَكلتُ وإليكَ أنبتُ، وبِكَ خاصَمتُ وإليكَ حَاكمتُ، فاغفِر لي ما قَدمتُ وما أخرتُ وما أسرَرتُ وما أعلنتُ، أنتَ المُقدمُ وأنتَ المُؤخرُ لا إلَهَ إلا أنتَ. ';
String p3 =
    'اللهمَّ إني أعوذ برضاك مِن سخطِك وبمعافاتِك مِن عقوبتِك وأعوذ بك منك لا أُحصي ثناءً عليكَ أنت كما أثنيتَ علَى نفسِك.';
String p4 =
    'اللهمَّ طهّر قلوبنا من النّفاق وأعمالنا من الرّياء وألسننا من الكذب وأعيننا من الخيانة، إنّك تعلم خائنة الأعين وما تخفي الصدور.';
String p5 = 'اللهمَّ أرزقنا الأخلاص فى كلَّ قولٍ وفعلٍ وعملٍ.';
String p6 =
    'اللهمَّ أحسن عاقبتنا في الأمور كلّها، وأجرنا من خزي الدّنيا وعذاب الآخرة.';
String p7 =
    'اللهمَّ إنّا نعوذ بك من جهد البلاء ودرك الشقاء وسوء القضاء وشماتة الأعداء.';
String p8 =
    'اللهمَّ إني أعوذ بك مِن علمٍ لا ينفعُ ، ومن قلبٍ لا يخشعُ ، ومن نفسٍ لا تشبعُ ، ومِن دُعاءٍ لا يُسمعُ.';
String p9 =
    'اللهمَّ إني أسألك من الخيرِ كله عاجلِه وآجلِه ما علِمتُ منه وما لم أعلمُ ، وأعوذ بك من الشر كله عاجلِه وآجلِه ما علِمتُ منه وما لم أعلمُ .';
String p10 =
    'اللهمَّ إني أسألك من خيرِ ما سألَك به عبدُك ونبيُّك ، وأعوذ بك من شرِّ ما عاذ به عبدُك ونبيُّك.';
String p11 =
    'اللهمَّ إنِّي أسألُك الجنة وما قرَّب إليها من قولٍ أو عملٍ ، وأعوذ بك من النارِ وما قرَّب إليها من قولٍ أو عملٍ ، وأسألك أن تجعلَ كلَّ قضاءٍ قضيتَه لي خيرًا.';
String p12 = 'اللهمَّ اكفني بحلالِكَ عن حرامِكَ، وأغنِني بِفضلِكَ عمَّن سواك.';
String p13 =
    'اللهمَّ رحمتَك أرجو فلا تكِلني إلى نفسي طرفةَ عينٍ، وأصلِح لي شأني كلَّه.';
String p14 =
    'اللهمَّ حبب إلينا الإيمانَ وزينه في قلوبِنا وكرِّه إلينا الكفرَ والفسوقَ والعصيانَ، واجعلنا من الراشدينَ.';
String p15 =
    'اللهمَّ أحينا مسلمينَ وتوفنا مسلمين وألحقنا بالصالحينَ غيرَ خزايا ولا مفتونينَ. ';

class DuaPrayers extends StatefulWidget {
  const DuaPrayers({super.key});

  @override
  State<DuaPrayers> createState() => _DuaPrayersState();
}

class _DuaPrayersState extends State<DuaPrayers> {
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
              'أدعـيــــة ومـــأثــــــورات',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'swissr',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF353535),
                  Color(0xFF353535),
                  Color(0xFF353535)
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
                'assets/images/dua-prayers.png',
                height: 25.0,
                width: 25.0,
              ),
            )
          ],
        ),
      ),
      body: NotificationListener<ScrollNotification>(
        child: Stack(children: [
          ScrollbarTheme(
            data: ScrollbarThemeData(
              interactive: true,
              thumbColor: MaterialStateProperty.all<Color>(
                _preferencesManager.isDarkMode
                    ? const Color(0xACBBBBBB)
                    : const Color(0x3CBBBBBB),
              ),
              radius: const Radius.circular(2),
              thickness: MaterialStateProperty.all<double>(7),
            ),
            child: Scrollbar(
              thumbVisibility: true,
              child: Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: _preferencesManager.isDarkMode
                    ? const Color(0xFFECECEC)
                    : const Color(0xFF1B1B1B),
                child: SingleChildScrollView(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p1,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p2,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p3,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p4,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p5,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p6,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p7,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p8,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p9,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p10,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p11,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p12,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p13,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p14,
                        ),
                        DuaText(
                          preferencesManager: _preferencesManager,
                          content: p15,
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class DuaText extends StatelessWidget {
  const DuaText({
    super.key,
    required PreferencesManager preferencesManager,
    required this.content,
  }) : _preferencesManager = preferencesManager;

  final String content;
  final PreferencesManager _preferencesManager;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 0,
        right: 5,
        left: 5,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: _preferencesManager.isDarkMode
            ? Colors.white
            : colorParagraphContentDark,
      ),
      child: paragraphContent(content,
          isDarkMode: _preferencesManager.isDarkMode,
          fontSize: _preferencesManager.fontSize),
    );
  }
}
