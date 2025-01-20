import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 = 'النية شرط في صحة الصوم كسائر العبادات - بالإجماع.';
String p2 =
    'يجب تبييت النية في صوم الفرض من الليل قبل طلوع الفجر  - الجمهور المالكية والشافعية والحنابلة.';
String p3 =
    'صائم رمضان لا يحتاج إلى تجديد النية في كل ليلة من ليالي رمضان بل تكفيه نية الصيام عند دخول الشهر .';
String p4 =
    'إن قطع النية للإفطار في سفر أو مرض -مثلآ- لزمه تجديد النية للصوم إذا زال عذره.';
String p5 =
    'لا يشترط في صيام التطوع تبييت النية من الليل ، ويجوز أن ينوي أثناء النهار قبل الزوال أو بعده إذا لم يتناول شيئآ من المفطرات بعد الفجر - ابن عثيمين.';
String p6 =
    'من أنشأ نية الصوم أثناء النهار فإنه يكتب له ثواب ما صامه من حين نوى الصوم فحسب  - ابن باز وابن عثيمين.';
String p7 =
    'من تردد في نية الصوم الواجب هل يصوم غدآ أو لا يصوم واستمر هذا التردد إلى الغد ثم صامه فصومه غير صحيح وعليه قضاء هذا اليوم - الجمهور من المالكية والشافعية والحنابلة وبعض الحنفية، ومثل ذلك مالو قال : إن شاء الله مترددآ لا يدري هل يصوم أو لا يصوم.';
String p8 =
    'إذا عقد الإنسان النية على أنه إن كان غدآ رمضان فهو فرضي ، أو سأصوم الفرض ، فتبين أنه رمضان فصومه صحيح - ابن عثيمين.';
String p9 =
    'النائم الذي نوى الصيام صومه صحيح، ولا قضاء عليه، ولو نام جميع النهار.';
String p10 =
    'من نوى في يوم من رمضان قطع صومه فإن صومه ينقطع ولا يصح منه وعليه القضاء وإمساك بقية اليوم إن كان ممن لا يباح لهم الفطر. فإن كان ممن يباح لهم الفطر كالمريض والمسافر فعليه القضاء فقط - المالكية والحنابلة وابن عثيمين.';
String p11 =
    'من تردد في قطع نية الصوم فإن صومه لا يبطل ما دام لم يجزم بقطعها - ابن عثيمين.';
String p12 =
    'من نوى الصوم ثم أصيب بإغماء في رمضان، فلا يخلو من حالين: الحالة الأولى: أن يستوعب الإغماءُ جميع النهار أي يغمى عليه قبل الفجر ولا يفيق إلا بعد غروب الشمس فهذا لا يصح صومه وعليه قضاء هذا اليوم - الجمهور من المالكية والشافعية والحنابلة ، الحالة الثانية: أن يفيق جزءاً من النهار، ولو للحظة فصيامه صحيح ولا قضاء عليه - مذهب الشافعية والحنابلة.';
String p13 =
    'من نوى الصيام بالليل ثم أصيب بالجنون ولم يفق إلا بعد غروب الشمس، فإن صومه لا يصح - المالكية والشافعية والحنابلة.';
String p14 =
    'من نوى الصيام بالليل ثم أغمي عليه ولم يفق إلا بعد غروب الشمس، فإن صومه لا يصح ويلزمه القضاء - المالكية والشافعية والحنابلة.';
String p15 =
    'من نوى الصيام بالليل ثم أغمي عليه ثم أفاق في النهار ولو جزءاً منه، فإن صومه صحيح - الشافعية والحنابلة وقول للمالكية.';
String p16 =
    'من نوى الإفطار في نهار رمضان فقد أفطر، وإن لم يتناول شيئا من المفطرات - المالكية والحنابلة.';
String p17 =
    'يستحب صوم التطوع المطلق، ما عدا الأيام التي ثبت تحريم صيامها ، ولا يُشترَط في نية صوم التطوع تعيين يومٍ معين، فيصح صوم التطوع بمطلق النية - اتفاق المذاهب الفقهية الأربعة.';

class Provision2 extends StatefulWidget {
  const Provision2({super.key});

  @override
  State<Provision2> createState() => _Provision2State();
}

class _Provision2State extends State<Provision2> {
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
              'النية',
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
                'assets/images/ramadan/nayaa.png',
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
