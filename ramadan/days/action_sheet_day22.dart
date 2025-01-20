import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utilities.dart';
import '../../seira/context/section61text.dart';

// START CONTEXTS -------------------------------------------------- //
int sectionIndex = 22;
const List t1 = ['1', 'حديث: ما بين الدرَجتينِ كما بينَ السماءِ والأرضِ'];
const List t2 = ['2', 'سيرة: مؤتة - الشهاد والتضحية'];
const List t3 = ['3', 'فوائد: نعيم الإقامة فى الجنة'];

String t1p1 =
    'عن أبو هريرة رضى الله عنه قال رسول الله صلى : مَن آمنَ باللَّهِ وبِرَسولهِ وأقامَ الصلاةَ وصامَ رَمضانَ كان حَقا علَى اللَّهِ أن يُدخِلهُ الجنة، جاهدَ في سَبيلِ اللَّهِ أو جَلسَ في أرضهِ التي وُلِدَ فيها، فقالوا: يا رَسول اللَّهِ، أفلا نُبشرُ الناسَ؟ قالَ: إن في الجَنة مِئة درجَة، أعَدها اللَّهُ لِلمجاهدِين في سبيلِ اللَّهِ، ما بين الدرجتينِ كما بين السماءِ والأرضِ، فإذا سَألتمُ اللَّه، فاسألوهُ الفِردوسَ ، فإنه أوسَط الجنةِ وأعلى الجَنةِ -أراهُ- فوقهُ عَرشُ الرحمَنِ، ومِنه تفجرُ أنهارُ الجنة.';
String t1p2 =
    'العمل الصالح مع الإخلاص يكون سببا في الفوز برضا الله سبحانه، ومن أفضل الأعمال التي ترفع الدرجات عند الله، وتكون سببا في دخول الجنة، الصلاة والصيام والجهاد.';
String t1p3 =
    'فلما قال النبي صلى الله عليه وسلم ذلك، قال بعض الحاضرين: أفلا نبشر الناس؟  يعني: نخبرهم بهذه البشارة العظيمة، وعند الترمذي من حديث معاذ بن جبل رضي الله عنه: قال معاذ: ألا أخبر بهذا الناس؟ فقال رسول الله صلى الله عليه وسلم: ذرِ النَّاسِ يَعمَلون ، فظهر أن المراد: لا تبشر الناس بما ذكرته من دخول الجنة لمن آمن وعمل الأعمال المفروضة عليه، فيقفوا عند ذلك ولا يتجاوزوه إلى ما هو أفضل منه من الدرجات التي تحصل في الجهاد.';
String t1p4 =
    'ولما سوى النبي صلى الله عليه وسلم بين الجهاد وبين عدمه -وهو المراد بالجلوس في أرضه التي ولد فيها- في دخول المؤمن بالله ورسوله، المقيم للصلاة، الصائم لرمضان في الجنة ، استدرك صلى الله عليه وسلم قوله الأول بقوله الثاني: إن في الجَنة مِئة درجَة، أعَدها اللَّهُ لِلمجاهدِين في سبيلِ اللَّهِ ، وتعقب بأن التسوية ليست على عمومها، وإنما هي في أصل دخول الجنة، لا في تفاوت الدرجات، فأخبرهم النبي صلى الله عليه وسلم بدرجات المجاهدين في سبيل الله، وبين منزلتهم في الجنة ليرغب أمته في مجاهدة المشركين وإعلاء كلمة الإسلام ودرجات الجنة كثيرة لم يرد حصرها في عدد، فهذه مئة أعدت للمجاهدين.';

String t3p1 =
    'قال ابن الجوزى رحمه الله: والله إني لأتخايل دخول الجنة ودوام الإقامة فيها من غير مرض ولا بصاق ولا نوم ولا آفة تطرأ بل صحة دائمة وأغراض متصلة لا يعترضها منغص، في نعيم متجدد في كل لحظة، إلى زيادة لا تتناهى، فأطيش ويكاد الطبع يضيق عن تصديق ذلك، لو لا أن الشرع قد ضمنه، معلوم أن تلك المنازل إنما تكون على قدر الإجتهاد ههنا.';
String t3p2 =
    'فوا عجبا من مضيع لحظة فيها فتسبيحه تغرس له في الجنة نخلة أكلها دائم وظلها، فيا أيها الخائف من فوت ذلك شجع قلبك بالرجاء، ويا أيها المنزعج لذكر الموت تلمح ما بعد مرارة الشربة من العافية، فإنه من ساعة خروج الروح، لا بل قبل خروجها تنكشف المنازل لأصحابها فيكون سير المجذوب للذة المنتقل إليه، ثم الأرواح في حواصل طير تعلق في أشجار الجنة.';
String t3p3 =
    'فكل الآفات والمخالفات في نهار الأجل وقد إصفرت شمس العمر، فالبدار البدار قبل الغروب ولا معين يرافق على تلك الطريق إلا الفكر إذا جلس مع العقل فتذاكرا العواقب، فإذا فرغ ذلك المجلس، فالنظر في سير المجدين فإنه يعود مستجلبا للفكر منها للفضائل، والتوفيق من وراء ذلك، ومتى أراك لشيء هيأك له، فأما مخالطة الذين ليس عندهم خبر إلا من العاجلة فهو من أكبر أسباب مرض الفهم وعلل العقل، والعزلة عن الشر حمية، والحمية سبب العافية.';

// END CONTEXTS -------------------------------------------------- //

// ActionSheetDay22
class ActionSheetDay22 {
  static void show(
    BuildContext context,
    bool isDarkMode,
    bool isCheckedDay22,
    VoidCallback toggleCheckDay22,
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
                    toggleCheckDay22();
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
                '22 رمضان',
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
                            !isCheckedDay22
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
  bool isCheckedDay22Task1 = false;
  bool isCheckedDay22Task2 = false;
  bool isCheckedDay22Task3 = false;
  bool isCheckedDay22Task4 = false;
// END INIT VARIABLES --------------------------------------------------------- //

// START LOAD INIT FUNCTIONS -------------------------------------------------- //
  @override
  void initState() {
    super.initState();
    loadTheme();
    _loadPreferences();
    checkboxDay22Task1();
    checkboxDay22Task2();
    checkboxDay22Task3();
    checkboxDay22Task4();
  }

// END LOAD INIT FUNCTIONS -------------------------------------------------- //

// START TASK1 -------------------------------------------------- //
  void checkboxDay22Task1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay22Task1 = prefs.getBool('isCheckedDay22Task1_1445') ?? false;
    });
  }

  void saveCheckboxDay22Task1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay22Task1_1445', value);
  }
// END TASK1 -------------------------------------------------- //

// START TASK2 -------------------------------------------------- //
  void checkboxDay22Task2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay22Task2 = prefs.getBool('checkboxDay22Task2_1445') ?? false;
    });
  }

  void saveCheckboxDay22Task2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxDay22Task2_1445', value);
  }
// END SAVE TASK2 -------------------------------------------------------- //

// START TASK3 -------------------------------------------------- //
  void checkboxDay22Task3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay22Task3 = prefs.getBool('isCheckedDay22Task3_1445') ?? false;
    });
  }

  void saveCheckboxDay22Task3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay22Task3_1445', value);
  }
// END TASK3 -------------------------------------------------- //

// START TASK4 -------------------------------------------------- //
  void checkboxDay22Task4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay22Task4 = prefs.getBool('isCheckedDay22Task4_1445') ?? false;
    });
  }

  void saveCheckboxDay22Task4(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay22Task4_1445', value);
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
          isCheckedDay22Task1 = !isCheckedDay22Task1;
        });
        saveCheckboxDay22Task1(isCheckedDay22Task1);
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
            value: isCheckedDay22Task1,
            onChanged: (value) {
              setState(() {
                isCheckedDay22Task1 = value!;
              });
              saveCheckboxDay22Task1(value!);
            },
          ),
        ]),
      ),
    );

    final task2 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay22Task2 = !isCheckedDay22Task2;
        });
        saveCheckboxDay22Task2(isCheckedDay22Task2);
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
            value: isCheckedDay22Task2,
            onChanged: (value) {
              setState(() {
                isCheckedDay22Task2 = value!;
              });
              saveCheckboxDay22Task2(value!);
            },
          ),
        ]),
      ),
    );

    final task3 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay22Task3 = !isCheckedDay22Task3;
        });
        saveCheckboxDay22Task3(isCheckedDay22Task3);
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
            value: isCheckedDay22Task3,
            onChanged: (value) {
              setState(() {
                isCheckedDay22Task3 = value!;
              });
              saveCheckboxDay22Task3(value!);
            },
          ),
        ]),
      ),
    );

    final task4 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay22Task4 = !isCheckedDay22Task4;
        });
        saveCheckboxDay22Task4(isCheckedDay22Task4);
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
            value: isCheckedDay22Task4,
            onChanged: (value) {
              setState(() {
                isCheckedDay22Task4 = value!;
              });
              saveCheckboxDay22Task4(value!);
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
        paragraphContent(p2,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p3,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p4,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p8,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p9,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p10,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p11,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p12,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
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
        Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
          child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'section61'),
              child: const Text(
                'متابعة القراءة ...',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF3563A4),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'swissr',
                ),
              )),
        ),
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
