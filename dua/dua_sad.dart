import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 =
    'اللهُـم إني أعُوذ بك مِن الهم والحزنِ، وأعُوذ بك من العَجزِ والكَسَلِ، وأعُوذ بك من الجُبن والبُخل، وأعُوذ بِكَ مِن غلبَةِ الدينِ وقهر الرجالِ.';
String p2 = 'لَا حَولَ وَلَا قوةَ إِلا باللَّه.';
String p3 = 'لَا إلَه إلَّا أنتَ سُبحَانكَ إِنِّي كُنت مِن الظالِمين.';
String p4 = 'سُبحَان اللّهِ و بحمدِهِ.';
String p5 =
    'لا إله إلا الله العظيم الحليم لا إله إلا الله رب السموات والأرض ورب العرش العظيم.';
String p6 =
    'اللهُم إني عبدُك ابن عبدِك ابنُ أمتِك ناصيتي بيدِك ماضٍ فيَّ حُكمك عَدل فيَّ قضاؤك أسألك بكل اسمٍ هو لك سميت به نفسك أو علمته أحدًا مِن خلقِك أو أنزلته في كتابك أو استأثرت به في علمِ الغيب عندَك أن تجعلَ القرآن ربيع قلبي ونورَ صدري وجلاءَ حُزني وذهابَ همّي.';
String p7 =
    'اللهم إليك أشكو ضعف قوتي وقلة حيلتي وهواني على الناس، أنت أرحم الراحمين وأنت ربى إلى من تكلني، إلى عدو يتجهمني أو إلى قريب ملكته أمري، إن لم يكن بك علي غضبٌ فلا أبالي، أعوذ بنور وجهك الذي أشرقت له الظلمات وصلح عليه أمر الدنيا والآخرة، أن تنزل علي غضبك أو سخطك، لك العتبى حتى ترضى ولا حول ولا قوة إلا بك.';

class DuaSad extends StatefulWidget {
  const DuaSad({super.key});

  @override
  State<DuaSad> createState() => _DuaSadState();
}

class _DuaSadState extends State<DuaSad> {
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
              'أدعية زوال الهَـمِّ والحــزن',
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
                'assets/images/sujud.png',
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
