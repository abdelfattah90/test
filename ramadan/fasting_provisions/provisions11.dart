import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 =
    'لا يُحكم بفساد صوم من ارتكب شيئاً من المفطرات إلا بشروطٍ ثلاثة: الأول: أن يكون عالماً بالحكم الشرعي، وعالماً بالوقت، فإن كان جاهلاً بالحكم الشرعي أو بالوقت فصيامه صحيح ، الثاني: أن يكون ذاكرا، والذكر ضده النسيان، فمن تناول شيئاً من المفطرات ناسياً فصيامه صحيح، وهو قول أكثر أهل العلم ، لكن متى تَذكَّر، أو ذُكِّر وجب عليه الإمساك ، الثالث: أن يكون قاصداً مختاراً، فمن حصل له شيء من المفطرات بلا قصد، فصومه صحيحٌ ولا إثم عليه، وضد الاختيار الإكراه، فمن أكره على شيءٍ من المفطرات فلا إثم عليه، وصيامه صحيح.';
String p2 =
    'من أكل أو شرب مما يتغذى به متعمداً، وهو ذاكرٌ لصومه فإن صومه يبطل - بالإجماع.';
String p3 =
    'يلزم من أفطر متعمدا بتناول الطعام أو الشراب، القضاء - قول عامة أهل العلم ، أما الكفارة فلا تجب عليه في أرجح قولي أهل العلم - الشافعية والحنابلة.';
String p4 =
    'يلزم من أفطر بالأكل والشرب متعمداً الإمساك بقية يومه  - المذاهب الفقهية الأربعة.';
String p5 =
    'من احتجم وهو صائم فقد فسد صومه - ابن باز وابن عثيمين  وخلافآ للجمهور.';
String p6 = 'من جامع متعمداً في نهار رمضان فسد صومه - بالإجماع.';
String p7 =
    'تجب الكفارة على المجامع في قول عامة أهل العلم فيعتق رقبة، فإن لم يجد فيصوم شهرين متتابعين، فإن لم يستطع فيطعم ستين مسكيناً ، والكفارة المذكورة على الترتيب في قول جمهور أهل العلم من الحنفية والشافعية والحنابلة والظاهرية - لحديث أبي هريرة رضي الله عنه.';
String p8 =
    'يلزم المجامع في نهار رمضان أيضا مع الكفارة قضاء ذلك اليوم الذي أفسده بالجماع - المذاهب الفقهيه الأربعة.';
String p9 =
    'من جامع ناسياً فصومه صحيح ولا يلزمه شيء - الحنفية والشافعية وابن تيمية.';
String p10 =
    'من تكرر منه الجماع في يوم واحد يكفيه كفارة واحدة إذا لم يكفر- بالإجماع.';
String p11 =
    'إذا تكرر منه الجماع في يوم واحد وكفر عن الأول فلا تلزمه كفارة ثانية - الحنفية والمالكية والشافعية.';
String p12 =
    'من تكرر منه الجماع في يومين فأكثر تلزمه كفارة لكل يوم جامع فيه سواء كفر عن الجماع الأول أم لا - المالكية والشافعية والحنابلة.';
String p13 =
    'من وطئ في الدبر أفطر وعليه القضاء والكفارة - المذاهب الفقهية الأربعة.';
String p14 = 'من جامع في قضاء رمضان عامداً فلا كفارة عليه - جماهير أهل العلم.';
String p15 =
    'من ترك صوم شهر رمضان جاحداً لفرضيته فهو كافرٌ بإجماع أهل العلم إلا أن يكون قريب العهد بالإسلام، أو نشأ بباديةٍ بعيدة من المسلمين، بحيث يعقل أن يخفى عليه وجوبها - المجموع للنووي';
String p16 =
    'من ترك صوم شهر رمضان متعمداً كسلاً وتهاوناً ولو يوماً واحداً منه، بحيث إنه لم ينو صومه من الأصل، فقد أتى كبيرةً من كبائر الذنوب، وتجب عليه التوبة، وإلى هذا ذهب عامة أهل العلم - المجموع للنووي ، لا يلزمه القضاء ولا يقبل منه - ابن عثيمين.';

class Provision11 extends StatefulWidget {
  const Provision11({super.key});

  @override
  State<Provision11> createState() => _Provision11State();
}

class _Provision11State extends State<Provision11> {
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
              'مبطلات الصيام',
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
                'assets/images/ramadan/ramadan_fast_mark3.png',
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
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p14,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p15,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p16,
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
