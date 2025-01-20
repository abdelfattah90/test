import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 =
    'يجب على الصائم أن يمتنع عن كل ما يبطل صومه من سائر المفطرات كالجماع والأكل والشرب و ينتهي زمن الإمساك بغروب الشمس - بالإجماع.';
String p2 = 'يسن للصائم تعجيل الفطر إذا تحقق من غروب الشمس - بالإتفاق.';
String p3 = 'يجوز الفطر بغلبة الظن - المذاهب الأربعة.';
String p4 =
    'إذا أفطر الصائم في صوم واجب ، ظانآ أن الشمس قد غربت ثم تبين له أنها لم تغرب فيلزمه الإمساك - عامة أهل العلم ، ولا قضاء عليه - ابن تيمية وابن القيم.';
String p5 =
    'لا يجوز الفطر مع الشك في غروب الشمس .فمن أكل شاكآ في غروب الشمس ولم يتبين له بعد ذلك هل غربت أم لا أو تبين أنها لم تغرب فإنه يأثم ويجب عليه القضاء في الحالتين - المذاهب الأربعة.';
String p6 =
    'يستحب الإفطار على رطب فإن لم يوجد فتمر فإن لم يوجد فماء - قول كثير من أهل العلم.';
String p7 =
    'من لم يجد رطبآ ولا تمرآ ولا ماء فليفطر على ما تيسر من مأكول أو مشروب - ابن عثيمين.';
String p8 =
    'من لم يجد شيئآ يفطر عليه من مأكول أو مشروب فإنه ينوي الفطر بقلبه ولا يمص إصبعه أو يجمع ريقه ويبلعه كما يفعل البعض - ابن عثيمين.';
String p9 =
    'كان رسول الله صلى الله عليه وسلم إذا أفطر قال: ذهب الظمأ وابتلت العروق وثبت الأجر إن شاء الله.';

class Provision3 extends StatefulWidget {
  const Provision3({super.key});

  @override
  State<Provision3> createState() => _Provision3State();
}

class _Provision3State extends State<Provision3> {
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
              'الأفطار',
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
                'assets/images/ramadan/iftar.png',
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
