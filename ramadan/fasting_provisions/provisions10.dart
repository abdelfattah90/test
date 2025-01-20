import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 = 'يكره المبالغة في المضمضة والاستنشاق للصائم - بالإجماع.';
String p2 =
    'يكره الوصال في الصوم عند أكثر أهل العلم - الحنفية والمالكية والحنابلة ووجه عند الشافعية.';
String p3 = 'يكره ذوق الطعام بغير حاجة  - المذاهب الفقهية الأربعة.';
String p4 =
    'يكره تذوق الطعام إذا لم يبتلعه ولكن لا يبطل الصوم ولا تفعله إلا إذا دعت الحاجة إليه - ابن عثيمين.';
String p5 =
    'تكره القبلة والملامسة وما شابههما لمن تتحرك شهوته عند ذلك، ويخشى على نفسه من الوقوع في الحرام، سواء بالجماع في نهار رمضان، أو بالإنزال - اتفاق المذاهب الفقهية الأربعة.';
String p6 = 'شرب الدخان المعروف أثناء الصوم يفسد الصيام، وهذا باتفاق الفقهاء.';
String p7 =
    'من استمنى فقد فسد صومه، وعليه القضاء - قول عامة الحنفية والشافعية والحنابلة.';
String p8 =
    'من أنزل المني بمباشرة دون الفرج أو بتقبيل أو لمس ، فإنه يفطر بذلك، وعليه القضاء فقط - بالإجماع ، ولا كفارة عليه - الحنفية والشافعية والحنابلة.';
String p9 =
    'من كرَّر النظر حتى أنزل، فقد ذهب الحنابلة، وبعض أهل العلم إلى أنه يفطر ولا كفارة عليه .';
String p10 =
    'من أنزل بتفكيرٍ مجردٍ عن العمل فلا يفطر، سواء كان تفكيراً مستداماً أو غير مستدام - الحنفية والشافعية والحنابلة.';
String p11 = 'من نام فاحتلم في نهار رمضان فصومه صحيح - بالإجماع.';
String p12 = 'خروج المذي من الصائم لا ينقض صومه - ابن عثيمين.';
String p13 =
    'ذهب أكثر أهل العلم إلى أن من استقاء متعمدا، فقد أفطر، ويلزمه القضاء ولا كفارة عليه وأجمعوا على أنَّ من غلبه القيء فلا شيء عليه.';

class Provision10 extends StatefulWidget {
  const Provision10({super.key});

  @override
  State<Provision10> createState() => _Provision10State();
}

class _Provision10State extends State<Provision10> {
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
              'مكروهات ومفسدات الصيام',
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
                'assets/images/ramadan/ramadan_fast_mark2.png',
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
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p1,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p2,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p3,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p4,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p5,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p6,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p7,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p8,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p9,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p10,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p11,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p12,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p13,
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

class PrevisionText extends StatelessWidget {
  const PrevisionText({
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
