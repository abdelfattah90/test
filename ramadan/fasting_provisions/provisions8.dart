import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

String p1 = 'يشترط لوجوب الصوم العقل والبلوغ - بالإجماع.';
String p2 =
    'إذا كان الصبي يطيق الصوم دون وقوع ضرر عليه فعلى وليه أن يأمره بالصوم ليتمرن عليه ويتعود عليه - الجمهور من الحنفية والشافعية والحنابلة ، على اختلاف بينهم في تحديد السن التي يؤمر فيها الصبي.';
String p3 =
    'إذا بلغ الصبي أثناء شهر رمضان فإنه يصوم بقية الشهر ولا يلزمه قضاء ما سبق سواء كان قد صامه أم أفطره - قول أكثر العلماء.';
String p4 =
    'إذا بلغ الصبي أثناء نهار رمضان وهو مفطر فإنه يمسك بقية يومه ولا قضاء عليه - الحنفية والشافعية ورواية عن أحمد اختارها ابن تيمية.';

class Provision8 extends StatefulWidget {
  const Provision8({super.key});

  @override
  State<Provision8> createState() => _Provision8State();
}

class _Provision8State extends State<Provision8> {
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
              'الأطفال',
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
                'assets/images/ramadan/boy.png',
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
