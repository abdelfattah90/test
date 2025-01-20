import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 =
    'أصحاب المهن الشاقة يجب عليهم تبييت نية صوم رمضان وأن يصبحوا صائمين، لكن من يعمل بأحد المهن الشاقة ويضره ترك عمله وخشي على نفسه التلف أثناء النهار ، أو لحوق مشقة عظيمة فإنه يفطر على قدر حاجته بما يدفع المشقة فقط ثم يمسك بقية يومه إلى الغروب ويفطر مع الناس وعليه القضاء.';
String p2 = 'يباح الفطر للمجاهد في سبيل الله - الحنفية والمالكية وابن تيمية.';
String p3 =
    'يباح الفطر للشيخ الكبير والمرأة العجوز اللذين لا يطيقان الصوم - بالإجماع.';
String p4 = 'تأخير الجنب الإغتسال إلى طلوع الفجر- بالإجماع.';
String p5 =
    'يباح للحائض إذا طهرت أن تؤخر الاغتسال من الحيض إلى طلوع الفجر - قول عامة أهل العلم.';
String p6 =
    'يباح للصائم المضمضة والاستنشاق في غير الوضوء، من غير مبالغة- بالإجماع.';
String p7 =
    'لا بأس أن يغتسل الصائمُ أو يصب الماءَ على رأسه من الحر أو العطش - اتفاق المذاهب الفقهية الأربعة.';
String p8 =
    'يباح للصائم ذوق الطعام عند الحاجة أو المصلحة كمعرفة استواء الطعام أو مقدار ملوحته أو عند شرائه لاختباره بشرط أن يمجه بعد ذلك أو يغسل فمه، أو يدلك لسانه- الحنفية والشافعية والحنابلة.';
String p9 =
    'يباح للصائم القبلة والمباشرة فيما دون الفرج بشرط أن يملك نفسه - الحنفية والشافعية والحنابلة.';
String p10 =
    'يباح للصائم التطيب وشم الروائح إذا لم تكن بخوراً أو دخاناً له جرم - ابن باز وابن عثيمين.';
String p11 =
    'يباح للصائم استعمال السواك في أي وقت، سواء كان قبل الزوال أو بعد الزوال -  ابن باز وابن عثيمين.';
String p12 =
    'يجوز أن يستعمل الصائم معجون الأسنان، لكن ينبغي الحذر من نفاذه إلى الحلق - ابن باز وابن عثيمين.';
String p13 =
    'يباح للصائم استعمال قطرة العين و قطرة الأذن  - ابن باز وابن عثيمين.';
String p14 =
    'إذا أفطر الرجل الكبير والمرأة العجوز فعليهما أن يطعما عن كل يومٍ مسكيناً - الحنفية والشافعية والحنابلة واستحبه المالكية.';
String p15 =
    'من أرهقه جوع أو عطش شديد يخاف منه الهلاك فإنه يجب عليه الفطر، وعليه القضاء - المالكية والشافعية.';
String p16 =
    'من أُكرِهَ على الإفطار بغير فعلٍ منه بأن صُبَّ في حلقه ماء مثلاً، فلا يفطر بذلك - الشافعية والحنابلة.';
String p17 =
    'إذا أُكره الصائم على الفطر فأفطر فلا إثم عليه، وصومه صحيح - الشافعية والحنابلة.';
String p18 =
    'من أكل أو شرب ناسياً، فلا شيء عليه ويتم صومه - الحنفية والشافعية والحنابلة.';
String p19 =
    'من ابتلع ما بين أسنانه وهو صائم وكان يسيراً لا يمكن لفظه مما يجري مع الريق فصومه صحيح - بالإجماع.';
String p20 =
    'أما إن كان يمكنه لفظه فابتلعه فإنه يفطر - قول أكثر أهل العلم والمَغني.';
String p21 =
    'إذا ابتلع الصائم ما لا يُؤكَلُ في العادة كدرهمٍ أو حصاةٍ أو حشيشٍ أو حديدٍ أو خيطٍ أو غير ذلك أفطر- جماهير أهل العلم من السلف والخلف والنووي.';
String p22 =
    'من نام جميع النهار، فصومه صحيحٌ عند عامة أهل العلم - الفروع لإبن مفلح.';

class Provision9 extends StatefulWidget {
  const Provision9({super.key});

  @override
  State<Provision9> createState() => _Provision9State();
}

class _Provision9State extends State<Provision9> {
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
              'مُباحات الصيام',
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
                'assets/images/ramadan/ramadan_fast_mark1.png',
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
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p17,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p18,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p19,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p20,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p21,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p22,
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
