import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utilities.dart';
import '../../seira/context/section46text.dart';

// START CONTEXTS -------------------------------------------------- //
int sectionIndex = 15;
const List t1 = ['1', 'حديث: أمسِك عليك لسانَك'];
const List t2 = ['2', 'سيرة: حادثة الإفك والمنافقين'];
const List t3 = ['3', 'فوائد: وَالله يَعلمُ وأنتم لَا تعلمُون'];

String t1p1 =
    'عن عقبة بنِ عامرٍ رضِيَ اللهُ عنه قال: قلتُ: يا رسولَ اللهِ ما النجاةُ؟ قال: أمسِك عليك لسانك وليسَعك بيتك وابكِ على خطيئتِك.';
String t1p2 =
    'أمسِك عليك لسانك ، أي: لا تجره إلا بما يكون لك لا عليك، وكان الظاهر أن يقال: حفظ اللسان، فأخرجه على سبيل الأمر المقتضي للتحقيق ، فالسؤال عن حقيقة النجاة والجواب بسببها لأنه أهم.';
String t1p3 =
    'عن أبي هرَيرة رَضِيَ اللَّهُ عنه، عن النبي صلَّى اللهُ عليه وسلَّم قال: إن العبد لَيتكلمُ بالكلمةِ مِن رِضوانِ اللَّهِ، لا يُلقي لها بالًا، يَرفعُه اللَّهُ بها درَجاتٍ، وإن العبد لَيتكلمُ بالكلمةِ مِن سَخطِ اللَّهِ، لا يُلقي لها بالًا، يَهوي بها في جَهنمَ.';
String t1p4 =
    'لا يلقي لها بالا أي: لا يرى بتلك الكلمة بأسا ، اللسان من نعم الله العظيمة ولطائف صنعه البديعة، فإنه مع صغر جرمه قد يكون سببا في دخول الجنة، أو انكباب صاحبه على وجهه في النار، لذا ينبغي للمسلم أن يحفظ لسانه.';
String t1p5 =
    'وفي هذا الحديث بين النبي صلى الله عليه وسلم أثر الكلمة وما يترتب عليها من أجر أو وزر، حتى إن العبد ليتكلم بالكلمة مما يرضاه الله ويحبه، لا يلتفت لها قلبه وباله ، لقلة شأنها عنده، فيرفعه الله بها درجات في الجنة، وإنه ليتكلم بالكلمة الواحدة مما يكرهه الله ولا يرضاه، لا يلتفت باله وقلبه لعظمها، ولا يتفكر في عاقبتها، ولا يظن أنها تؤثر شيئا، ولكنها عند الله عظيمة في قبحها، فيهوي بها -أي: ينزل ويسقط بسببها- في دركات جهنم.';

String t3p1 =
    'لما حذر الله المؤمنين من العود إلى مثل ما خاضوا به من الإفك على جميع أزمنة المستقبل أعقب تحذيرهم بالوعيد على ما عسى أن يصدر منهم في المستقبل بالوعيد على محبة شيوع الفاحشة في المؤمنين، فالجملة استئناف ابتدائي ، واسم الموصول يعم كل من يتصف بمضمون الصلة فيعم المؤمنين والمنافقين والمشركين ، فهو تحذير للمؤمنين وإخبار عن المنافقين والمشركين.';
String t3p2 =
    'وجُعل الوعيد على المحبة لشيوع الفاحشة في المؤمنين تنبيهاً على أن محبة ذلك تستحق العقوبة لأن محبة ذلك دالة على خبث النية نحو المؤمنين ، ومن شأن تلك الطوية أن لا يلبث صاحبها إلا يسيراً حتى يصدر عنه ما هو محب له أو يُسَر بصدور ذلك من غيره ، فالمحبة هنا كناية عن التهيؤ لإبراز ما يحب وقوعه ، وجيء بصيغة الفعل المضارع للدلالة على الاستمرار ، وأصل الكناية أن تجمع بين المعنى الصريح ولازمه فلا جرم أن ينشأ عن تلك المحبة عذاب الدنيا وهو حد القذف وعذاب الآخرة وهو أظهر لأنه مما تستحقه النوايا الخبيثة، وتلك المحبة شيء غير الهمّ بالسيئة وغير حديث النفس لأنهما خاطران يمكن أن ينكف عنهما صاحبهما.';
String t3p3 =
    'ومعنى: أن تشيع الفاحشة أن يشيع خبرها لأن الشيوع من صفات الأخبار والأحاديث كالفشو وهو: اشتهار التحدث بها ، فتعين تقدير مضاف أي أن يشيع خبرها إذ الفاحشة هي الفعلة البالغة حداً عظيماً في الشناعة.';
String t3p4 =
    'وشاع إطلاق الفاحشة على الزنى ونحوه وتقدم في قوله تعالى : واللاتي يأتين الفاحشة من نسائكم - سورة النساء ، وتقدم ذكر الفاحشة بمعنى الأمر المنكر في قوله: وإذا فعلوا فاحشة قالوا وجدنا عليها آباءنا - سورة الأعراف.';
String t3p5 =
    'ومن أدب هذه الآية أن شأن المؤمن أن لا يحب لإخوانه المؤمنين إلا ما يحب لنفسه ، فكما أنه لا يحب أن يشيع عن نفسه خبر سوء كذلك يجب عليه أن لا يحب إشاعة السوء عن إخوانه المؤمنين ، ولشيوع أخبار الفواحش بين المؤمنين بالصدق أو بالكذب مفسدة أخلاقية فإن مما يزع الناس عن المفاسد تهيبهم وقوعها وتجهمهم وكراهتهم سوء سمعتها وذلك مما يصرف تفكيرهم عن تذكرها بله الإقدام عليها رويداً رويداً حتى تنسى وتنمحي صورها من النفوس.';
String t3p6 =
    'هذا إلى ما في إشاعة الفاحشة من لحاق الأذى والضر بالناس ضراً متفاوت المقدار على تفاوت الأخبار في الصدق والكذب.';
String t3p7 =
    'ولهذا ذيل هذا الأدب الجليل بقوله: والله يعلم وأنتم لا تعلمون ، أي يعلم ما في ذلك من المفاسد فيعظكم لتجتنبوا وأنتم لا تعلمون فتحسبون التحدث بذلك لا يترتب عليه ضر وهذا كقوله: وتحسبونه هيّناً وهو عند الله عظيم - سورة النور.';

// END CONTEXTS -------------------------------------------------- //

// ActionSheetDay15
class ActionSheetDay15 {
  static void show(
    BuildContext context,
    bool isDarkMode,
    bool isCheckedDay15,
    VoidCallback toggleCheckDay15,
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
                    toggleCheckDay15();
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
                '15 رمضان',
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
                            !isCheckedDay15
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
                            const SizedBox(height: 10),
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
  bool isCheckedDay15Task1 = false;
  bool isCheckedDay15Task2 = false;
  bool isCheckedDay15Task3 = false;
  bool isCheckedDay15Task4 = false;
// END INIT VARIABLES --------------------------------------------------------- //

// START LOAD INIT FUNCTIONS -------------------------------------------------- //
  @override
  void initState() {
    super.initState();
    loadTheme();
    _loadPreferences();
    checkboxDay15Task1();
    checkboxDay15Task2();
    checkboxDay15Task3();
    checkboxDay15Task4();
  }

// END LOAD INIT FUNCTIONS -------------------------------------------------- //

// START TASK1 -------------------------------------------------- //
  void checkboxDay15Task1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay15Task1 = prefs.getBool('isCheckedDay15Task1_1445') ?? false;
    });
  }

  void saveCheckboxDay15Task1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay15Task1_1445', value);
  }
// END TASK1 -------------------------------------------------- //

// START TASK2 -------------------------------------------------- //
  void checkboxDay15Task2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay15Task2 = prefs.getBool('checkboxDay15Task2_1445') ?? false;
    });
  }

  void saveCheckboxDay15Task2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxDay15Task2_1445', value);
  }
// END TASK2 -------------------------------------------------- //

// START TASK3 -------------------------------------------------- //
  void checkboxDay15Task3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay15Task3 = prefs.getBool('isCheckedDay15Task3_1445') ?? false;
    });
  }

  void saveCheckboxDay15Task3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay15Task3_1445', value);
  }
// END TASK3 -------------------------------------------------- //

// START TASK4 -------------------------------------------------- //
  void checkboxDay15Task4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay15Task4 = prefs.getBool('isCheckedDay15Task4_1445') ?? false;
    });
  }

  void saveCheckboxDay15Task4(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay15Task4_1445', value);
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
          isCheckedDay15Task1 = !isCheckedDay15Task1;
        });
        saveCheckboxDay15Task1(isCheckedDay15Task1);
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
            value: isCheckedDay15Task1,
            onChanged: (value) {
              setState(() {
                isCheckedDay15Task1 = value!;
              });
              saveCheckboxDay15Task1(value!);
            },
          ),
        ]),
      ),
    );

    final task2 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay15Task2 = !isCheckedDay15Task2;
        });
        saveCheckboxDay15Task2(isCheckedDay15Task2);
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
            value: isCheckedDay15Task2,
            onChanged: (value) {
              setState(() {
                isCheckedDay15Task2 = value!;
              });
              saveCheckboxDay15Task2(value!);
            },
          ),
        ]),
      ),
    );

    final task3 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay15Task3 = !isCheckedDay15Task3;
        });
        saveCheckboxDay15Task3(isCheckedDay15Task3);
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
            value: isCheckedDay15Task3,
            onChanged: (value) {
              setState(() {
                isCheckedDay15Task3 = value!;
              });
              saveCheckboxDay15Task3(value!);
            },
          ),
        ]),
      ),
    );

    final task4 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay15Task4 = !isCheckedDay15Task4;
        });
        saveCheckboxDay15Task4(isCheckedDay15Task4);
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
            value: isCheckedDay15Task4,
            onChanged: (value) {
              setState(() {
                isCheckedDay15Task4 = value!;
              });
              saveCheckboxDay15Task4(value!);
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
        paragraphContent(t1p5,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
      ],
      isDarkMode: _preferencesManager.isDarkMode,
    );

    final seira = createParagraph(
      paragraphTitle(t2[0], t2[1], sectionIndex,
          isSpecial: true, isDarkMode: _preferencesManager.isDarkMode),
      [
        paragraphContent(p1,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p2,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p3,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p4,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
          child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'section46'),
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
        paragraphContent(t3p4,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p5,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p7,
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
