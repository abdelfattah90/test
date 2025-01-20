import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 =
    'يباح للحامل والمرضع الفطر في رمضان، سواء خافتا على نفسيهما أو على ولديهما  -  المذاهب الفقهية الأربعة.';
String p2 =
    'إذا أفطرت الحامل والمرضع خوفاً على نفسيهما أو على ولديهما، فعليهما القضاء فقط ، فإذا كان الفطر خوفاً على نفسيهما، فهو بالإجماع ، وأما إذا كان خوفاً على ولديهما فهو مذهب الحنفية ، ووافقهم المالكية في الحامل.';
String p3 =
    'مشروعية صلاة للتراويح جماعةً في المسجد ، الأفضل للمرأة أن تصلي قيام رمضان في بيتها إلا إذا خشيت التفريط في القيام أو ضياعه، أو كانت صلاتها في المسجد أخشع لها وأنشط، فصلاتها في المسجد حينئذٍ أفضل بشرط التزام الحجاب الشرعي، وترك الزينة والتطيُّب إلى غير ذلك من الضوابط الشرعية لخروجها.';
String p4 =
    'يشترط لاعتكاف الزوجة أن يأذن لها زوجها - اتفاق المذاهب الفقهية الأربعة ، ولا يصح اعتكافها في مسجد بيتها - المالكية والشافعية والحنابلة.';
String p5 =
    'طروء الحيض أو النفاس على المعتكفة يحرِّم عليها اللبث في المسجد، فينقطع بذلك اعتكافها مؤقتاً، ولا يبطله، فإذا طهرت فإنها ترجع إلى المسجد الذي كانت تعتكف فيه وتبني على ما مضى من اعتكافها - المالكية والشافعية والحنابلة.';
String p6 =
    'يشترط لوجوب الصوم على المرأة طهارتها من دم الحيض والنفاس - بالإجماع.';
String p7 =
    'يحرم الصوم، فرضه ونفله، على الحائض والنفساء، ولا يصح صومهما، وعليهما القضاء - بالإجماع.';
String p8 =
    'إذا طهرت الحائض أو النفساء أثناء نهار رمضان فإنه لا يلزمهما إمساك بقية اليوم - ابن عثيمين.';
String p9 =
    'إذا طهرت الحائض أو النفساء قبل الفجر وجب عليهما الصوم وإن لم يغتسلا إلا بعد الفجر - قول عامة أهل العلم  - شرح مسلم.';
String p10 =
    'حبوب منع الحمل أو الحيض تجتنب إن ثبت أن فيها ضررآ على المرأة - اللجنة الدائمة وابن عثيمين.';
String p11 =
    'من حاضت أو نفست أثناء نهار رمضان، فقد فسد صومها، ويلزمها قضاؤه  - بالإجماع.';
String p12 =
    'من فسد صومها بخروج دم الحيض أو النفاس فإنه لا يلزمها إمساك باقي اليوم - الحنفية والمالكية والشافعية.';
String p13 =
    'يلزم المرأة إذا جومعت في نهار رمضان طائعةً، القضاء والكفارة - الحنفية والمالكية والحنابلة.';

String p14 = 'يباح الأكتحال - الألباني وابن عثيمين.';

String p15 =
    'لا يجب التتابع في قضاء رمضان - اتفاق المذاهب الفقهية الأربعة ، فقضاء رمضان واجب ولكن لا يجب فيه التتابع، إن قضت متتابعة هو أفضل، وإن فرقت فلا بأس، القضاء واجب والتتابع غير واجب، فإذا قضت رمضان مفرقاً فلا بأس، سواء كان إفطارها في رمضان لمرض أو لحيض أو نفاس، القضاء لا يجب فيه التتابع ولكن يستحب، فإذا فرقت القضاء فلا بأس أو فرقه الرجل، فرق القضاء لأنه مريض فأفطر في رمضان ثم صام بعد ذلك لا حرج في التفريق، وأما ست من شوال فلا يجب صيامها، سنة مستحبة، صيام ست من شوال صوم مستحب ولا يجب، فمن تركه فلا بأس ومن صامه له أجر.';
String p16 =
    'لا يجوز للمرأة أن تصوم نفلاً وزوجها حاضرٌ إلا بإذنه - اتفاق المذاهب الفقهية الأربعة ، وخص المالكية الحرمة بما إذا كان الزوج محتاجاً إلى امرأته ، وخصَّ الشافعية الحرمة بما يتكرر صومه ، أما ما لا يتكرر صومه كعرفة وعاشوراء وستة من شوال فلها صومها بغير إذنه، إلا إن منعها ، وإذا صامت الزوجة تطوعاً بغير إذن زوجها، فله أن يفطرها - الحنفية والمالكية والشافعية ، أما المالكية والحنابلة خصُّوا جواز تفطيرها بالجماع فقط ، أما بالأكل والشرب فليس له ذلك.';

class Provision5 extends StatefulWidget {
  const Provision5({super.key});

  @override
  State<Provision5> createState() => _Provision5State();
}

class _Provision5State extends State<Provision5> {
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
              'المرأة',
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
                'assets/images/ramadan/hijab.png',
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
