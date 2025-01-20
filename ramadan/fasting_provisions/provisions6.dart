import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 =
    'يشترط لوجوب الصوم أن يكون مقيمآ أما المسافر فلا يجب عليه الصوم - بالإجماع.';
String p2 =
    'إذا لم يشق الصوم على المسافر واستوى عنده الصوم والفطر فالأفضل له الصوم - الحنفية والمالكية والشافعية.';
String p3 =
    'إذا شقَّ الصوم على المسافر بحيث يكون الفطر أرفق به، فالفطر في حقه أفضل - الحنفية والمالكية والشافعية والحنابلة.';
String p4 =
    'إذا خاف المسافر الهلاك بصومه فإنه يجب عليه الفطر - الحنفية والمالكية والشافعية.';
String p5 =
    'يجوز الفطر للمسافر إذا بلغ سفره مسافة القصر - المالكية والشافعية والحنابلة.';
String p6 =
    'لا يباح للمسافر الفطر حتى يجاوز البيوت وراء ظهره ويخرج من بين بنيانها - قول عامة أهل العلم بل حكي الإجماع.';
String p7 =
    'إذا أقام المسافر في مكانٍ فوق أربعة أيام فلا يُباح له الفطر - المالكية والشافعية والحنابلة.';
String p8 =
    'يباح الفطر لمن كان سفره شِبْه دائم كسائقي الطائرات والقطارات والشاحنات ونحوهم إذا كان له بلدٌ يأوي إليه - ابن عثيمين.';
String p9 = 'إذا أفطر المسافر وجب عليه قضاء ما أفطره من أيام - بالإجماع.';
String p10 = 'إذا دخل على المسافر شهرُ رمضان وهو في سفره فله الفطر- بالإجماع.';
String p11 =
    'إذا سافر أثناء الشهر ليلاً فله الفطر في صبيحة الليلة التي يخرج فيها وما بعدها - قول عامة أهل العلم.';
String p12 = 'إذا سافر أثناء نهار رمضان فله أن يفطر - ابن عثيمين.';
String p13 =
    'إذا قدم المسافر أثناء النهار مفطراً فلا يجب عليه إمساك بقية النهار - المالكية والشافعية بخلاف ابن باز .';
String p14 =
    'يباح الإفطار للمسافر ولو كان سفره بوسائل النقل المريحة، سواء وجد مشقة أو لم يجدها - بالإجماع.';
String p15 =
    'من أفطر بالبلد ثم أقلعت الطائرة به أو أفطر في الطائرة قبل إرتفاعها وذلك بعد إنتهاء النهار ثم رأى الشمس بعد إرتفاع الطائرة في الجو فإنه يستمر مفطرآ - إبن عثيمين وإبن باز.';
String p16 =
    'متى رأى الصائم من مكانه الذي هو فيه أن الشمس قد غربت أفطر وإلا فلا، فلكل صائم حكم المكان الذي هو فيه سواء كان على سطح الأرض أم كان على طائرة في الجو.';
String p17 =
    'من سافر بالطائرة وهو صائم ثم اطَّلع بواسطة الساعة أو غيرها على أن وقت إفطار البلد الذي سافر منه او البلد القريبة منه في سفره قد دخل لكنه يرى الشمس بسبب إرتفاع الطائرة فليس له أن يفطر إلا بعد غروبها - إبن عثيمين وإبن باز.';
String p18 =
    'يجب على الصائم الإمساك من حين طلوع الفجر حتى تغرب الشمس في أي مكان كان من الأرض سواء طال النهار أم قصر أم تساويا مدام هو في أرض فيها ليل ونهار يتعاقبان خلال أربع وعشرين ساعة.';
String p19 =
    'لو شق الصوم في الأيام الطويلة مشقة غير محتملة ويخشى منها الضرر أو حدوث مرض فإن الفطر جائز حينئذ ويقضي المفطر في أيام أخر يتمكَّن فيها من القضاء - إبن عثيمين وإبن باز.';
String p20 =
    'من كان في بلد لا يتعاقب فيه الليل والنهار في أربع وعشرين ساعة كبلد يكون نهارها مثلآ يومين أو أسبوعآ أو شهرآ أو أكثر من ذلك ،فإنه يقدر للنهار قدره ولليل قدره، كيفية التقدير : أن تحسب مدة الليل والنهار اعتمادآ على أقرب بلد منه يكون فيه ليل ونهار يتعاقبان في أربع وعشرين ساعة - ابن عثيمين وابن باز.';

class Provision6 extends StatefulWidget {
  const Provision6({super.key});

  @override
  State<Provision6> createState() => _Provision6State();
}

class _Provision6State extends State<Provision6> {
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
              'المسافر',
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
                'assets/images/ramadan/destination.png',
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
