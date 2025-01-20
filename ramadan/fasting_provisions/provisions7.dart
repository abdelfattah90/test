import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 = 'يشترط لوجوب الصوم القدرة والإستطاعة عليه - بالإجماع.';
String p2 =
    'المريض الذي يرجى شفاؤه له ثلاث حالات: أن لا يشق عليه الصوم ولا يضره فيجب عليه الصوم،  أن يشق عليه الصوم ولا يضره فيفطر، أن يضره الصوم فيجب عليه الفطر ويحرم عليه الصوم.';
String p3 = 'يباح للمريض الفطر في رمضان، وذلك في الجملة - بالإجماع.';
String p4 =
    'العاجز عن الصوم عجزآ مستمرآ لا يرجى زواله كالكبير والشيخ الفاني الذي فنيت قوته لكن عقله معه والمريض مرضآ لا يرجى برؤه ولا شفاؤه منه ويشق عليه الصوم كالمريض بالسرطان فهذا لا يجب عليه الصيام ولكن يجب عليه الإطعام عن كل يوم مسكينآ ، ويخيَر في الإطعام بين أمرين أولا: أن يصنع طعامآ ويدعوا إليه المساكين بقدر الأيام التي أفطرها، ثانيا: أو يوزع على كل مسكين نصف صاع من قوت البلد -يعادل كيلوا ونصفآ تقريبآ من الرز- ، و الإطعام في أول الشهر لا يجزئ ، ولا يجزئ إخراجها مالآ لنص الآية ،و إذا كان فقيرآ لا يجد ما يطعم به المساكين تسقط عنه الكفارة وقيل لا تسقط.';
String p5 =
    'إذا زال مرض العاجز أثناء النهار فإنه لا يلزمه إمساك بقية يومه - ابن عثيمين.';
String p6 =
    'من مرض مرضاً لا يؤثر فيه الصوم ولا يتأذى به، مثل الزكام أو الصداع اليسيرين، أو وجع الضرس، وما أشبه ذلك، فلا يحل له أن يفطر - المذاهب الفقهية الأربعة.';
String p7 =
    'إذا كان المرض يضر بالصائم، وخشي الهلاك بسببه، فالفطر عليه واجب - الحنفية والمالكية والشافعية وجزم به جماعة من الحنابلة.';
String p8 =
    'إذا أفطر من كان به مرضٌ يُرجى بُرْؤُهُ ثم شُفي، وجب عليه قضاء ما أفطره من أيام - بالإجماع.';
String p9 =
    'إذا أفطر من كان به مرضٌ لا يُرجى بُرْؤُهُ، كأن يكون مرضه مزمناً، فإنه يُطعِمُ عن كل يومٍ مسكيناً  - جمهور أهل العلم ذكره النووي.';
String p10 = 'إذا تحامل المريض على نفسه فصام فإنه يُجزئهُ  - بالإجماع.';
String p11 =
    'إذا أصبح المريض صائماً ثم برأ في النهار، فإنه لا يفطر ويلزمه الإتمام - جمهور أهل العلم ذكره النووي.';

String p12 = 'يجوز أخذ الدم للتحليل - ابن باز وابن عثيمين.';
String p13 =
    'لا يجوز التبرع بالدم الكثير الذي يؤثر على البدن تأثير الحجامة - ابن عثيمين ، وابن باز أن الأحوط تأجيله إلى ما بعد الإفطار ومن احتقن وهو صائم بحقنة في الشرج فقد فسد صومه - المذاهب الفقهيه الأربعة.';
String p14 =
    'استعمال القطرة في الأنف في نهار رمضان أو السعوط يفسد الصوم - المذاهب الفقهيه الأربعة.';
String p15 =
    'من أجري له غسيل كلوي بأي وسيلة كانت فإنه يفطر بذلك - ابن باز واللجنة الدائمة.';
String p16 =
    'استعمال بخاخ الربو في نهار رمضان لا يفسد الصوم - ابن باز وابن عثيمين.';
String p17 =
    'الأقراص التي توضع تحت اللسان لعلاج بعض الأزمات القلبية لا تفسد الصوم بشرط ألاَ يبتلع شيئآ مما يتحلل منها - ابن باز وقرَره مجمع الفقه الإسلامي بالإجماع.';
String p18 =
    'استعمال غاز الأكسجين في التنفس لا يفسد الصيام - مجمع الفقه الإسلامي.';
String p19 =
    'استعمال الحقنة غير المغذية لا يفسد الصوم سواء كانت الحقنة في العضل أو الوريد أو تحت الجلد - ابن باز وابن عثيمين.';
String p20 =
    'استعمال الحقن الوريدية المغذية يفسد الصيام - ابن باز وابن عثيمين.';
String p21 =
    'استعمال التحاميل -اللبوس- في نهار رمضان لا يفسد الصوم - أهل الظاهر وجماعة من المالكية وابن عثيمين.';
String p22 =
    'إذا أدخل الصائم في إحليله مائعاً أو دهناً فإنه لا يفطر - الحنفية والمالكية والحنابلة.';
String p23 =
    'لا يفطر كذلك إدخال القثطرة -أنبوب دقيق-، أو المنظار، أو إدخال دواء، أو محلول لغسل المثانة، أو مادة تساعد على وضوح الأشعة - مجمع الفقه الإسلامي';
String p24 =
    'التقطير في فرج المرأة غير مفسد للصيام، وكذلك التحاميل المهبلية وضخ صبغة الأشعة - مجمع الفقه الإسلامي.';

class Provision7 extends StatefulWidget {
  const Provision7({super.key});

  @override
  State<Provision7> createState() => _Provision7State();
}

class _Provision7State extends State<Provision7> {
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
              'المريض',
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
                'assets/images/ramadan/medical-records.png',
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
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p23,
                        ),
                        PrevisionText(
                          preferencesManager: _preferencesManager,
                          content: p24,
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
