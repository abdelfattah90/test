import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 =
    'أجمعت الأمة على مشروعية صلاة التراويح، ولم ينكرها أحد من أهل العلم - السرخسي.';
String p2 =
    'ظاهر المنقول أنها شرعت في آخر سني الهجرة  ، وصلاة التراويح سنة مؤكدة - بالإجماع ، النووي.';
String p3 =
    'السنة في التراويح أن تُؤدَّى جماعةً في المساجد - جمهور الفقهاء من الحنفية والمالكية والشافعية والحنابلة.';
String p4 =
    'التراويح لغةً: جمع ترويحة، وهي المرة الواحدة من الراحة، وروَّحت بالقوم ترويحاً: صليت بهم التراويح ، وسُمِّيت بذلك لأن الناس كانوا يطيلون القيام فيها والركوع والسجود، فإذا صلوا أربعاً استراحوا، ثم استأنفوا الصلاة أربعاً، ثم استراحوا، ثم صلوا ثلاثاً ، التراويح اصطلاحاً: هي قيام شهر رمضان - المغني.';
String p5 =
    'من صلى التراويح مع الإمام حتى ينصرف كتب له قيام ليلةٍ كاملة ، والأفضل أن تكون إحدى عشرة ركعة أو ثلاث عشرة ركعة مع تطويلها ، قال ابن عبد البر وقد أجمع العلماء على أن لا حد ولا شي مقدر في صلاة الليل وأنها نافلة فمن شاء أطال فيها القيام وقلت ركعاته ومن شاء أكثر الركوع والسجود ، وقراءة القرآن في صلاة التراويح مستحبةٌ باتفاق أئمة المسلمين - ابن تيمية ، دون تحديدٍ لمقدار القراءة فيها، فالأمر فيه واسع - ابن باز ، واستحب بعض أهل العلم للأئمة أن يُسمِعُوا المأمومين جميع القرآن في قيام رمضان إذا لم يشق على الناس.';
String p6 =
    'دعاء القنوت: هو الدعاء في الصلاة في محلٍّ مخصوصٍ من القيام - فتح الباري ، ويسن القنوت في الوتر في جميع السنة - الحنابلة وابن باز وابن عثيمين.';
String p7 =
    'القنوت مشروع في الوتر ولا سيما في شهر رمضان فإن استمر فلا مانع وإن تركه أحيانآ فلا مانع فالكل خير ولا ينكر على من استمر ولا على من تركه أحيانآ - مجلة البحوث الإسلامية.';
String p8 =
    'يستحب ترك المداومة على القنوت في كل ليلة، فيستحب أن يقنت أحيانا ويترك القنوت أحيانا - ابن عثيمين والألباني.';
String p9 =
    'القنوت يكون في الركعة الأخيرة، ويجوز قبل الركوع ، وبعد الركوع - ابن باز وابن عثيمين.';
String p10 = 'يستحب رفع اليدين في القنوت - ابن باز وابن عثيمين.';
String p11 =
    'ولا يمسح وجهه بيديه بعد الفراغ من دعاء القنوت - ابن باز وابن عثيمين.';
String p12 =
    'ألفاظ قنوت الوتر: عن الحسن بن علي رضي الله عنه أنه قال: علمني رسول الله صلى الله عليه وسلم كلمات أقولهن في الوتر: اللهم اهدني فيمن هديت، وعافني فيمن عافيت، وتولني فيمن توليت، وبارك لي فيما أعطيت، وقني شر ما قضيت، فإنك تقضي ولا يقضى عليك، وإنه لا يذل من واليت، تباركت ربنا وتعاليت.';
String p13 =
    'يجوز أن يدعو المصلي في قنوت الوتر بما شاء، سواء دعا معه بالوارد المأثور أو لا  - أكثر الفقهاء ونص عليه فقهاء الحنفية والشافعية والحنابلة واللجنة الدائمة وابن عثيمي.';
String p14 =
    'يسن الصلاة على النبي صلى الله عليه وسلم بعد الفراغ من دعاء القنوت - الصحيح من مذهب الشافعية والمذهب عند الحنابلة وقول عند الحنفية.';
String p15 =
    'لا يشرع للإمام الدعاء في الصلاة بعد ختم القرآن - مالك وابن عثيمين وبكر ابو زيد .';
String p16 =
    'مخالفات في دعاء القنوت: المبالغة في رفع الإمام صوته في الدعاء حتى يصل أحياناً إلى حد الصياح والصراخ - المبالغة في رفع الصوت بالبكاء - الإطالة المفرطة في الدعاء - الاعتداء في الدعاء وتكلف السجع فيه - مواظبة بعض الأئمة على دعاءٍ معينٍ في كل قنوت.';

class Provision12 extends StatefulWidget {
  const Provision12({super.key});

  @override
  State<Provision12> createState() => _Provision12State();
}

class _Provision12State extends State<Provision12> {
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
              'صلاة القيام ودعاء القنوت',
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
                'assets/images/ramadan/shalat.png',
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
