import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 =
    'السحور هو كل طعام أو شراب يتغذى به آخر الليل من أراد الصوم ، وهو سنة في حق من يريد الصوم – بالإجماع ، ويسن التسحر بالتمر.';
String p2 =
    'من فضائل السحور أنه بركة، ومن حكم السحور أنه معونة على العبادة وهو يعين الإنسان على الصوم ، وأن فيه مخالفة لأهل الكتاب فإنهم لا يتسحرون، ويقع وقت السحور في آخر الليل - فتح الباري.';
String p3 =
    'يستحب تأخير السحور إلى قرب طلوع الفجر مالم يخش طلوعه فإن خشي طلوعه فليبادر إلى التسحر - المذاهب الأربعة.';
String p4 =
    'من تسحر معتقدآ أنه ليل فتبين له أن الفجر قد دخل وقته فصومه صحيح ولا قضاء عليه - ابن عثيمين.';
String p5 =
    'حكم تناول السحور أثناء الأذان له حالات: الأولى: إن كان المؤذن ثقة لا يؤذن حتى يطلع الفجر وجب الإمساك بمجرد سماع أذانه ، الثانية: إن كان المؤذن يؤذن قبل طلوع الفجر لم يجب الإمساك وجاز الأكل والشرب حتى يتبين الفجر كما لو عرف أن المؤذن يتعمد تقديم الأذان قبل الوقت أو مثل أن يكون في برية ويمكنه مشاهدة الفجر فإنه لا يلزمه الإمساك إذا لم يطلع الفجر ولو سمع الأذان، الثالثة: ن كان لا يعلم حال المؤذن هل أذن قبل الفجر أو بعد الفجر فإنه يمسك أيضآ .فإن الأصل أن المؤذن لا يؤذن إلا إذا دخل الوقت وهذا أضبط في الفتوى وعليه عمل الناس.';
String p6 =
    'إتفق أصحاب المذاهب الفقهية الأربعة على أن من طلع عليه الفجر وفي فمه طعام أن يلفظه ويتم صومه فإن إبتلعه بعد علمه بالفجر بطل صومه.';
String p7 =
    'إستثنى بعض أهل العلم من سمع الأذان وفي يده إناء أن يتناول منه - فتح ذي الجلال والإكرام.';

class Provision4 extends StatefulWidget {
  const Provision4({super.key});

  @override
  State<Provision4> createState() => _Provision4State();
}

class _Provision4State extends State<Provision4> {
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
              'السحور',
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
                'assets/images/ramadan/sohour.png',
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
