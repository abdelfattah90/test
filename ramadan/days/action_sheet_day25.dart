import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utilities.dart';
import '../../seira/context/section69text.dart';

// START CONTEXTS -------------------------------------------------- //
int sectionIndex = 25;

const List t1 = ['1', 'حديث: يبيعُ أحدهم دينهُ بعرضٍ منَ الدنيا'];
const List t2 = ['2', 'سيرة: تبوك - ألا في الفتنة سقطوا'];
const List t3 = ['3', 'فوائد: عقوبة نقد العهد مع الله'];

String t1p1 =
    'عن أبو هريرة رضى الله عنه قال رسول الله ﷺ بادروا بالأعمالِ فتنًا كقطعِ الليلِ المظلمِ ، يصبحُ الرجلُ مؤمنًا ويمسي كافرًا ، ويمسي مؤمنًا ويصبحُ كافرًا ، يبيعُ أحدُهم دينَهُ بعرضٍ منَ الدُّنيا.';
String t1p2 =
    'كان رسول الله ﷺ حريصا على أمته  فكان يعظ المؤمنين ويرشدهم إلى العمل الصالح، ويحذرهم ويخوفهم من التراخي، وتأخير طاعات اليوم إلى الغد؛ فلا يدري المسلم ما يأتي به غد.';
String t1p3 =
    'وفي هذا الحديث يأمر رسول الله ﷺ المؤمنين بالمسابقة والمسارعة بالأعمال الصالحة قبل مجيء الفتن التي تكثر في آخر الزمان، أو قبل الانشغال عنها بوقوع الفتن التي تثبط العامل عن عمله، والمراد بها: الفتن التي يخلط فيها الحق بالباطل بين أهل الإسلام، فيصعب على المطلع الفصل والتمييز فيها.';
String t1p4 =
    'وتلك الفتن تكون كقطع الليل المظلم لا يتميز بعضها من بعض، وهذا كناية عن شدتها وضررها وشمولها لكل من شهدها، ويكون المرء في التباس منها لا يتميز بعضها من بعض، ومن شدة تلك الفتن يصبح الرجل مؤمنا ويمسي كافرا، أو يمسي مؤمنا ويصبح كافرا، فيأتيه من الفتن ما تزل به قدمه عن صفة الإيمان ، وهذا لعظم الفتن ينقلب الإنسان في اليوم الواحد هذا الانقلاب.';
String t1p5 =
    'ومن شدة تلك الفتن أيضا أن يترك المرء دينه من أجل متاع دنيء، وثمن رديء. وقوله ﷺ : بعرض من الدنيا، أي: ما يعرض فيها، وكل ما في الدنيا فهو عرض، وسمي بذلك؛ لأنه يعرض ويزول ، إما أن تزول أنت قبله أو يزول هو قبلك ، والمبادرة بالأعمال الصالحة عاصم من تلك الفتن بفضل الله تعالى، فليحذر المؤمن، وليسابق بفعل الحسنات قبل الفوات.';

String t3p1 =
    'ومِنهم مَن عَاهدَ اللَّهَ لئِن آتانا مِن فضلِهِ لنصَّدقن وَلَنكوننَّ مِن الصالِحِينَ ، فلمَّا آتَاهم مِن فضلِهِ بَخِلوا بهِ وَتوَلوا وَهم مُعرِضُون ، فأعقبهُم نِفاقًا فِي قلوبهِم إِلى يَومِ يَلقونهُ بمَا أَخلَفوا اللَّهَ مَا وَعَدُوهُ وَبمَا كَانُوا يَكذِبونَ - سورة التوبة';
String t3p2 =
    'ذكر كثير من المفسرين ومنهم ابن عباس والحسن البصري أنَّ سبب نزول هذه الآية الكريمة في ثعلبة بن حاطب الأنصاري، أنَّه قال لرسول الله ﷺ : ادعُ الله أن يرزقني مالًا، قال: فقال رسولُ الله ﷺ : ويحك يا ثعلبة! قليل تُؤدِّي شُكره خير من كثيرٍ لا تُطيقه.';
String t3p3 =
    'قال: ثم قال مرةً أخرى، فقال: أما ترضى أن تكون مثل نبي الله؟ فوالذي نفسي بيده، لو شئتُ أن تسير الجبال معي ذهبًا وفضَّةً لسارت، قال: والذي بعثك بالحقِّ، لئن دعوتَ الله فرزقني مالًا لأُعطينَّ كلّ ذي حقٍّ حقَّه، فقال رسولُ الله ﷺ : اللهم ارزق ثعلبة مالًا.';
String t3p4 =
    'قال: فاتّخذ غنمًا، فنمت كما ينمو الدّود، فضاقت عليه المدينة، فتنحَّى عنها، فنزل واديًا من أوديتها، حتى جعل يُصلي الظهر والعصر في جماعةٍ، ويترك ما سواهما، ثم نمت وكثرت، فتنحَّى حتى ترك الصَّلوات إلا الجمعة، وهي تنمو كما ينمو الدود، حتى ترك الجمعة، فطفق يتلقّى الركبان يوم الجمعة ليسألهم عن الأخبار.';
String t3p5 =
    'فقال رسولُ الله ﷺ: ما فعل ثعلبة؟ فقالوا: يا رسول الله، اتخذ غنمًا فضاقت عليه المدينة، فأخبروه بأمره، فقال: يا ويح ثعلبة! يا ويح ثعلبة! يا ويح ثعلبة!.';
String t3p6 =
    'وأنزل الله جلَّ ثناؤه الآية خُذ مِن أموَالِهِم صَدَقةً ، ونزلت فرائض الصَّدقة، فبعث رسولُ الله ﷺ رجلين على الصَّدقة من المسلمين ، رجلًا من جُهينة ورجلًا من سليم، وكتب لهما كيف يأخذان الصَّدقة من المسلمين، وقال لهما: مُرَّا بثعلبة وبفلان -رجل من بني سليم- فخُذَا صدقاتهما، فخرجا حتى أتيا ثعلبة فسألاه الصَّدقة، وأقرآه كتاب رسول الله ﷺ، فقال: ما هذه إلا جزية، ما هذه إلا أخت الجزية، ما أدري ما هذا؟! انطلقا حتى تفرغا، ثم عودا إليَّ، فانطلقا.';
String t3p7 =
    'وسمع بهما السّلمي، فنظر إلى خيار أسنان إبله فعزلها للصَّدقة، ثم استقبلهما بها، فلمَّا رأوها قالوا: ما يجب عليك هذا، وما نُريد أن نأخذ هذا منك، فقال: بلى، فخذوها، فإنَّ نفسي بذلك طيبة، وإنما هي لله، فأخذاها منه، ومرَّا على الناس، فأخذا الصَّدقات، ثم رجعا إلى ثعلبة، فقال: أروني كتابكما، فقرأه، فقال: ما هذه إلا جزية، ما هذه إلا أخت الجزية، انطلقا حتى أرى رأيي.';
String t3p8 =
    'فانطلقا حتى أتيا النبي ﷺ، فلمَّا رآهما قال: يا ويح ثعلبة! قبل أن يُكلّمهما، ودعا للسّلمي بالبركة، فأخبراه بالذي صنع ثعلبة، والذي صنع السّلمي، فأنزل الله الآية ومِنهم مَن عَاهدَ اللَّهَ لئِن آتانا مِن فضلِهِ لنصَّدقن وَلَنكوننَّ مِن الصالِحِينَ.';
String t3p9 =
    'قال: وعند رسول الله ﷺ رجل من أقارب ثعلبة، فسمع ذلك، فخرج حتى أتاه فقال: ويحك يا ثعلبة! قد أنزل اللهُ فيك كذا وكذا، فخرج ثعلبةُ حتى أتى النبي ﷺ، فسأله أن يقبل منه صدقته، فقال: ويحك! إنَّ الله منعني أن أقبل منك صدقتك، فجعل يحثو على رأسه التراب، فقال له رسولُ الله ﷺ: هذا عملك، قد أمرتُكَ فلم تُطعني.';
String t3p10 =
    'فلمَّا أبى رسولُ الله ﷺ أن يقبل صدقته رجع إلى منزله، فقُبِضَ رسولُ الله ﷺ ولم يقبل منه شيئًا، ثم أتى أبا بكر حين استخلف، فقال: قد علمتَ منزلتي من رسول الله ﷺ، وموضعي من الأنصار، فاقبل صدقتي، فقال أبو بكر: لم يقبلها منك رسولُ الله ﷺ، وأبى أن يقبلها، فقُبِضَ أبو بكر ولم يقبلها.';
String t3p11 =
    'فلمَّا ولي عمر أتاه فقال: يا أمير المؤمنين، اقبل صدقتي، فقال: لم يقبلها رسولُ الله ﷺ ولا أبو بكر، وأنا أقبلها منك؟! فقُبِضَ ولم يقبلها.';
String t3p12 =
    'فلمَّا ولي عثمان أتاه فقال: اقبل صدقتي، فقال: لم يقبلها رسولُ الله ﷺ ولا أبو بكر ولا عمر، وأنا أقبلها منك؟! فلم يقبلها منه، فهلك ثعلبةُ في خلافة عثمان.';

// END CONTEXTS -------------------------------------------------- //

// ActionSheetDay25
class ActionSheetDay25 {
  static void show(
    BuildContext context,
    bool isDarkMode,
    bool isCheckedDay25,
    VoidCallback toggleCheckDay25,
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
                    toggleCheckDay25();
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
                '25 رمضان',
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
                            !isCheckedDay25
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
  bool isCheckedDay25Task1 = false;
  bool isCheckedDay25Task2 = false;
  bool isCheckedDay25Task3 = false;
  bool isCheckedDay25Task4 = false;
// END INIT VARIABLES --------------------------------------------------------- //

// START LOAD INIT FUNCTIONS -------------------------------------------------- //
  @override
  void initState() {
    super.initState();
    loadTheme();
    _loadPreferences();
    checkboxDay25Task1();
    checkboxDay25Task2();
    checkboxDay25Task3();
    checkboxDay25Task4();
  }

// END LOAD INIT FUNCTIONS -------------------------------------------------- //

// START TASK1 -------------------------------------------------- //
  void checkboxDay25Task1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay25Task1 = prefs.getBool('isCheckedDay25Task1_1445') ?? false;
    });
  }

  void saveCheckboxDay25Task1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay25Task1_1445', value);
  }
// END TASK1 -------------------------------------------------- //

// START TASK2 -------------------------------------------------- //
  void checkboxDay25Task2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay25Task2 = prefs.getBool('checkboxDay25Task2_1445') ?? false;
    });
  }

  void saveCheckboxDay25Task2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxDay25Task2_1445', value);
  }
// END TASK2 -------------------------------------------------- //

// START TASK3 -------------------------------------------------- //
  void checkboxDay25Task3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay25Task3 = prefs.getBool('isCheckedDay25Task3_1445') ?? false;
    });
  }

  void saveCheckboxDay25Task3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay25Task3_1445', value);
  }
// END TASK3 -------------------------------------------------- //

// START TASK4 -------------------------------------------------- //
  void checkboxDay25Task4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay25Task4 = prefs.getBool('isCheckedDay25Task4_1445') ?? false;
    });
  }

  void saveCheckboxDay25Task4(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay25Task4_1445', value);
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
          isCheckedDay25Task1 = !isCheckedDay25Task1;
        });
        saveCheckboxDay25Task1(isCheckedDay25Task1);
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
            value: isCheckedDay25Task1,
            onChanged: (value) {
              setState(() {
                isCheckedDay25Task1 = value!;
              });
              saveCheckboxDay25Task1(value!);
            },
          ),
        ]),
      ),
    );

    final task2 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay25Task2 = !isCheckedDay25Task2;
        });
        saveCheckboxDay25Task2(isCheckedDay25Task2);
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
            value: isCheckedDay25Task2,
            onChanged: (value) {
              setState(() {
                isCheckedDay25Task2 = value!;
              });
              saveCheckboxDay25Task2(value!);
            },
          ),
        ]),
      ),
    );

    final task3 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay25Task3 = !isCheckedDay25Task3;
        });
        saveCheckboxDay25Task3(isCheckedDay25Task3);
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
            value: isCheckedDay25Task3,
            onChanged: (value) {
              setState(() {
                isCheckedDay25Task3 = value!;
              });
              saveCheckboxDay25Task3(value!);
            },
          ),
        ]),
      ),
    );

    final task4 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay25Task4 = !isCheckedDay25Task4;
        });
        saveCheckboxDay25Task4(isCheckedDay25Task4);
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
            value: isCheckedDay25Task4,
            onChanged: (value) {
              setState(() {
                isCheckedDay25Task4 = value!;
              });
              saveCheckboxDay25Task4(value!);
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
        paragraphContent(p5,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p6,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p7,
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
        paragraphContent(t3p4,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p5,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p6,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p7,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p8,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p9,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p10,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p11,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(t3p12,
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
