import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utilities.dart';
import '../../seira/context/section17text.dart';

// START CONTEXTS -------------------------------------------------- //
int sectionIndex = 9;
const List t1 = ['1', 'حديث: عجبا لأمر المؤمن'];
const List t2 = ['2', 'سيرة: محنة الطائف'];
const List t3 = ['3', 'فوائد: من أسرار إجابة الدعاء'];

String t1p1 =
    'عن صهيب رضي الله عنه قال: قال رسول الله ﷺ: عجبا لأمر المؤمن، إن أمره كله خير، وليس ذاك لأحد إلا للمؤمن، إن أصابته سراء  شكر فكان خيرا له، وإن أصابته ضراء  صبر فكان خيرا له.';
String t1p2 =
    'قوله:عجبا لأمر المؤمن، إن أمره كله له خير، أي: أن رسول الله ﷺ أظهر العجب على وجه الاستحسان لأمر المؤمن، أي: لشأنه، فإن شأنه كله خير وليس ذلك لأحد إلا للمؤمن.';
String t1p3 =
    'ثم فصل رسول الله ﷺ هذا الأمر الخير فقال: إن أصابته سراء شكر فكان خيرا له، وإن أصابته ضراء صبر فكان خيرا له، هذه حال المؤمن وكل إنسان فإنه في قضاء الله وقدره بين أمرين: إما سراء وإما ضراء، والناس في هذه الإصابة ينقسمون إلى قسمين: مؤمن وغير مؤمن، فالمؤمن على كل حال ما قدر الله له فهو خير له، إن أصابته الضراء صبر على أقدار الله وانتظر الفرج من الله واحتسب الأجر على الله، فكان خيرا له فنال بهذا أجر الصابرين.';
String t1p4 =
    'وأما الكافر فهو على شر -والعياذ بالله- إن أصابته الضراء لم يصبر بل يضجر، ودعا بالويل والثبور، وسب الدهر، وسب الزمن.';

String t3p1 =
    'قال ابن الجوزى رحمه الله: تأملت حالة عجيبة وهي: أن المؤمن تنزل به النازلة فيدعو ويبالغ فلا يرى أثرا للاجابة، فإذا قارب اليأس نظر حينئذ إلى قلبه فإن كان راضيا بالأقدار غير قنوط من فضل الله عز وجل فالغالب تعجيل الإجابة حينئذ لأن هناك يصلح، الإيمان ويهزم الشيطان وهناك تبين مقادير الرجال.';
String t3p2 =
    'وقد أشير إلى هذا في قوله تعالى: حتى يقول الرسول والذين آمنوا معه: متى نصر الله، وكذلك جرى ليعقوب عليه السلام فإنه لما فقد ولدا وطال الأمر عليه لم ييأس من الفرج فأخذ ولده الآخر ولم ينقطع أمله من فضل ربه أن يأتيني بهم جميعا، وكذلك قال زكريا عليه السلام ولم أكن بدعائك رب شقيا.';
String t3p3 =
    'فإياك أن تستطيل مدة الإجابة وكن ناظرا إلى أنه المالك وإلى أنه الحكيم في التدبير، والعالم بالمصالح وإلى أنه يريد اختبارك ليبلو أسرارك وإلى أنه يريد أن يرى تضرعك وإلى أنه يريد أن يأجرك بصبرك إلى غير ذلك، وإلى أنه يبتليك بالتأخير لتجارب وسوسة إبليس، وكل واحدة من هذه الأشياء تقوي الظن في فضله وتوجب الشكر له إذ أهلك بالبلاء للالتفاف إلى سؤاله وفقر المضطر إلى اللجأ إليه غنى كله.';

// END CONTEXTS -------------------------------------------------- //

// ActionSheetDay9
class ActionSheetDay9 {
  static void show(
    BuildContext context,
    bool isDarkMode,
    bool isCheckedDay9,
    VoidCallback toggleCheckDay9,
  ) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        void showAlertDialog(BuildContext context) {
          showCupertinoModalPopup<void>(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text(
                'إتمام اليوم',
                style: TextStyle(
                  fontFamily: 'swissr',
                  fontWeight: FontWeight.bold,
                  color: colorParagraphTitleCompanion,
                ),
              ),
              content: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'assets/images/ramadan/ramadan_calendar.png',
                  width: 100,
                  height: 80,
                ),
              ),
              actions: <CupertinoDialogAction>[
                CupertinoDialogAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'ليس الآن',
                    style: TextStyle(
                      fontFamily: 'swissr',
                      fontWeight: FontWeight.bold,
                      color: colorParagraphTitle,
                    ),
                  ),
                ),
                CupertinoDialogAction(
                  isDestructiveAction: true,
                  onPressed: () {
                    toggleCheckDay9();
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'نعم',
                    style: TextStyle(
                      fontFamily: 'swissr',
                      fontWeight: FontWeight.bold,
                      color: colorStatusBarSeira,
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        // START daySheetHead -------------------------------------------------- //
        var daySheetHead = Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                isDarkMode ? colorStatusBarSeira : colorStatusBarSeiraDark,
                isDarkMode ? colorStatusBarSeira : colorStatusBarSeiraDark,
              ],
            ),
          ),
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 5, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '9 رمضان',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'dinnextregular',
                  color: colorBgSections,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: isDarkMode
                      ? colorStatusBarSeira
                      : colorStatusBarSeiraDark,
                  padding: const EdgeInsets.all(20),
                ),
                child: const Icon(
                  Icons.close,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
        // END daySheetHead -------------------------------------------------- //
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.92,
              width: MediaQuery.of(context).size.width * 0.97,
              child: CupertinoPageScaffold(
                child: Scaffold(
                  body: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 10, vertical: 10),
                    color: isDarkMode ? colorBgSections : colorBgSectionsDark,
                    child: SingleChildScrollView(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Column(
                          children: [
                            daySheetHead,
                            const BodySheet(),
                            const SizedBox(height: 10),
                            !isCheckedDay9
                                ? ElevatedButton(
                                    onPressed: () => showAlertDialog(context),
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(170, 50),
                                      foregroundColor: Colors.white,
                                      backgroundColor: isDarkMode
                                          ? colorStatusBarSeira
                                          : colorStatusBarSeiraDark,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'إتمام اليوم',
                                            style: TextStyle(
                                              fontFamily: 'dinnextregular',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: colorBgSections,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    padding:
                                        const EdgeInsetsDirectional.symmetric(
                                            horizontal: 10, vertical: 15),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: isDarkMode
                                              ? const Color(0xFFDEDEDE)
                                              : const Color(0x00000000),
                                          spreadRadius: 5,
                                          blurRadius: 20,
                                          offset: const Offset(5, 15),
                                        ),
                                      ],
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          isDarkMode
                                              ? const Color(0xFFFFFFFF)
                                              : colorParagraphContentDark,
                                          isDarkMode
                                              ? const Color(0xFFEAEAEA)
                                              : colorParagraphContentDark,
                                          isDarkMode
                                              ? const Color(0xFFEDEDED)
                                              : colorParagraphContentDark,
                                          isDarkMode
                                              ? const Color(0xFFFFFFFF)
                                              : colorParagraphContentDark,
                                        ],
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'تَقبل الله منك هذا اليوم',
                                          style: TextStyle(
                                            fontFamily: 'dinnextregular',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                            color: isDarkMode
                                                ? colorBgSectionsDark
                                                : colorBgSections,
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          child: Image.asset(
                                            'assets/images/ramadan/correct-light.png',
                                            width: 25,
                                            height: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            const SizedBox(height: 10)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class BodySheet extends StatefulWidget {
  const BodySheet({
    super.key,
  });

  @override
  State<BodySheet> createState() => _BodySheetState();
}

class _BodySheetState extends State<BodySheet> {
// START INIT VARIABLES ------------------------------------------------------- //
  final PreferencesManager _preferencesManager = PreferencesManager();
  bool _isDarkMode = false;
  bool isCheckedDay9Task1 = false;
  bool isCheckedDay9Task2 = false;
  bool isCheckedDay9Task3 = false;
  bool isCheckedDay9Task4 = false;
// END INIT VARIABLES --------------------------------------------------------- //

// START LOAD INIT FUNCTIONS -------------------------------------------------- //
  @override
  void initState() {
    super.initState();
    loadTheme();
    _loadPreferences();
    checkboxDay9Task1();
    checkboxDay9Task2();
    checkboxDay9Task3();
    checkboxDay9Task4();
  }

// END LOAD INIT FUNCTIONS -------------------------------------------------- //

// START TASK1 -------------------------------------------------- //
  void checkboxDay9Task1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay9Task1 = prefs.getBool('isCheckedDay9Task1_1445') ?? false;
    });
  }

  void saveCheckboxDay9Task1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay9Task1_1445', value);
  }
// END TASK1 -------------------------------------------------- //

// START TASK2 -------------------------------------------------- //
  void checkboxDay9Task2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay9Task2 = prefs.getBool('checkboxDay9Task2_1445') ?? false;
    });
  }

  void saveCheckboxDay9Task2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxDay9Task2_1445', value);
  }
// END TASK2 -------------------------------------------------- //

// START TASK3 -------------------------------------------------- //
  void checkboxDay9Task3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay9Task3 = prefs.getBool('isCheckedDay9Task3_1445') ?? false;
    });
  }

  void saveCheckboxDay9Task3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay9Task3_1445', value);
  }
// END TASK3 -------------------------------------------------- //

// START TASK4 -------------------------------------------------- //
  void checkboxDay9Task4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay9Task4 = prefs.getBool('isCheckedDay9Task4_1445') ?? false;
    });
  }

  void saveCheckboxDay9Task4(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay9Task4_1445', value);
  }
// END TASK4 -------------------------------------------------- //

// START LOAD_PM
  Future<void> _loadPreferences() async {
    await _preferencesManager.loadTheme();
    await _preferencesManager.loadFontSize();
    setState(() {});
  }

// END LOAD_PM

// START LOAD THEME
  loadTheme() async {
    bool isDarkMode = await ThemePreferences.isDarkMode();
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }
// END LOAD THEME

  @override
  Widget build(BuildContext context) {
    final task1 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay9Task1 = !isCheckedDay9Task1;
        });
        saveCheckboxDay9Task1(isCheckedDay9Task1);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color:
              _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF252525),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'azkar-morning'),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: _isDarkMode
                    ? const Color(0xAEF5F5F5)
                    : const Color(0xFF2D2D2D),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/images/morning_ramadan.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Text(
                    'أذكار الصباح',
                    style: TextStyle(
                      fontFamily: 'dinnextregular',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: _isDarkMode
                          ? const Color(0xFF000000)
                          : const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Checkbox(
            checkColor: colorBgSections,
            activeColor: colorStatusBarSeira,
            value: isCheckedDay9Task1,
            onChanged: (value) {
              setState(() {
                isCheckedDay9Task1 = value!;
              });
              saveCheckboxDay9Task1(value!);
            },
          ),
        ]),
      ),
    );

    final task2 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay9Task2 = !isCheckedDay9Task2;
        });
        saveCheckboxDay9Task2(isCheckedDay9Task2);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color:
              _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF252525),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'azkar-evening'),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: _isDarkMode
                    ? const Color(0xAEF5F5F5)
                    : const Color(0xFF2D2D2D),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/images/crescent-moon_ramadan.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Text(
                    'أذكار المساء',
                    style: TextStyle(
                      fontFamily: 'dinnextregular',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: _isDarkMode
                          ? const Color(0xFF000000)
                          : const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Checkbox(
            checkColor: colorBgSections,
            activeColor: colorStatusBarSeira,
            value: isCheckedDay9Task2,
            onChanged: (value) {
              setState(() {
                isCheckedDay9Task2 = value!;
              });
              saveCheckboxDay9Task2(value!);
            },
          ),
        ]),
      ),
    );

    final task3 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay9Task3 = !isCheckedDay9Task3;
        });
        saveCheckboxDay9Task3(isCheckedDay9Task3);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color:
              _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF252525),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'jana'),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: _isDarkMode
                    ? const Color(0xAEF5F5F5)
                    : const Color(0xFF2D2D2D),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/images/jana/tasbih.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Text(
                    'وِرد الأذكار',
                    style: TextStyle(
                      fontFamily: 'dinnextregular',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: _isDarkMode
                          ? const Color(0xFF000000)
                          : const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Checkbox(
            checkColor: colorBgSections,
            activeColor: colorStatusBarSeira,
            value: isCheckedDay9Task3,
            onChanged: (value) {
              setState(() {
                isCheckedDay9Task3 = value!;
              });
              saveCheckboxDay9Task3(value!);
            },
          ),
        ]),
      ),
    );

    final task4 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay9Task4 = !isCheckedDay9Task4;
        });
        saveCheckboxDay9Task4(isCheckedDay9Task4);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color:
              _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF252525),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'dua'),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: _isDarkMode
                    ? const Color(0xAEF5F5F5)
                    : const Color(0xFF2D2D2D),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/images/praying_2_ramadan.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Text(
                    'الدعاء',
                    style: TextStyle(
                      fontFamily: 'dinnextregular',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: _isDarkMode
                          ? const Color(0xFF000000)
                          : const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Checkbox(
            checkColor: colorBgSections,
            activeColor: colorStatusBarSeira,
            value: isCheckedDay9Task4,
            onChanged: (value) {
              setState(() {
                isCheckedDay9Task4 = value!;
              });
              saveCheckboxDay9Task4(value!);
            },
          ),
        ]),
      ),
    );

    final hadith = createParagraph(
      paragraphTitle(t1[0], t1[1], sectionIndex,
          isCompanion: true, isDarkMode: _preferencesManager.isDarkMode),
      [
        paragraphContent(t1p1,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t1p2,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t1p3,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t1p4,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
      ],
      isDarkMode: _preferencesManager.isDarkMode,
    );

    final seira = createParagraph(
      paragraphTitle(t2[0], t2[1], sectionIndex,
          isSpecial: true, isDarkMode: _preferencesManager.isDarkMode),
      [
        paragraphContent(p13,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p14,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p15,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p16,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p17,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p18,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p19,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p20,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p21,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
      ],
      isDarkMode: _preferencesManager.isDarkMode,
    );

    final benefits = createParagraph(
      paragraphTitle(t3[0], t3[1], sectionIndex,
          isDarkMode: _preferencesManager.isDarkMode),
      [
        paragraphContent(t3p1,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p2,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p3,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
      ],
      isDarkMode: _preferencesManager.isDarkMode,
    );

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            hadith,
            seira,
            benefits,
            const SizedBox(height: 10),
            task1,
            task2,
            task3,
            task4,
          ],
        ),
      ),
    );
  }
}
