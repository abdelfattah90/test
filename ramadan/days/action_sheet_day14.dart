import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utilities.dart';
import '../../seira/context/section41text.dart';

// START CONTEXTS -------------------------------------------------- //
int sectionIndex = 14;
const List t1 = ['1', 'حديث: رجل ممسك عنان فرسه'];
const List t2 = ['2', 'سيرة: غزوة بني النضير - لأَنتُم أَشد رَهبَة'];
const List t3 = [
  '3',
  'فوائد: إعجاز القتال بين المؤمنين وبين اليهود في الأرض المقدسة '
];

String t1p1 =
    'عن أبي هريرة رضي الله عنه  عن رسول الله ﷺ أنه قال: من خير معاش الناس لهم رجل ممسك عنان  فرسه في سبيل الله، يطير على متنه كلما سمع هيعة أو فزعة طار عليه، يبتغي القتل والموت مظانه، أو رجل في غنيمة في رأس شعفة  من هذه الشعف، أو بطن واد من هذه الأودية، يقيم الصلاة، ويؤتي الزكاة، ويعبد ربه حتى يأتيه اليقين، ليس من الناس إلا في خير.';
String t1p2 =
    'كان النبي ﷺ يدل الناس على ما فيه صلاح ورفعة شأنهم في الدنيا والآخرة، فكان يحث على مجاهدة أعداء الدين، وعلى مجاهدة النفس والشيطان، والإعراض عن استيفاء اللذات العاجلة؛ حتى يكون للإنسان نصيب وافر من درجات الآخرة.';
String t1p3 =
    'وفي هذا الحديث يبين النبي ﷺ أن من أفضل وأشرف طرق المعاش في الدنيا الجهاد في سبيل الله، وعبر عنه بقوله: رجل ممسك عنان فرسه، أي: ممسك لجامه وزمامه، يريد أنه مراقب لحركات العدو ومتأهب للقائه ومستعد لقتاله، يطير على متنه، أي: يسرع راكبا على ظهره للجهاد في سبيل الله، كلما سمع هيعة، أي: صيحة وصوتا، أو سمع فزعة، أي: استغاثة، طار عليه، أي: أسرع راكبا على ظهر فرسه طائرا إلى مصدر الصوت والاستغاثة، وهذا يدل على أنه في حال تأهب دائم، وعلى شدة اهتمامه بما هو فيه من المجاهدة في سبيل الله تعالى، يبتغي القتل والموت مظانه، أي: لا يبالي ولا يحترز منه، بل يطلبه في مواطنه التي يرجى فيها لشدة رغبته في الشهادة.';
String t1p4 =
    'والنوع الثاني الذي هو من أفضل ما يطلب به الرجال المعايش: هو ما يفعله رجل في غنيمة تصغير غنم، والمعنى: يرعى بقطيع صغير من الغنم، وهذا إشارة لضعف رغبته في الدنيا، فعنده من الغنم ما يقيم به عيشه وحياته، في رأس شعفة من هذه الشعف وهو رأس الجبل، يعني أنه يقيم في أعالي الجبال، أو يقيم في بطون الأودية، وهذا كله وصف لقناعة هذا الرجل فإنه قصد بسكنه هذا الابتعاد والاعتزال عن الناس، مع اشتغاله بعبادة ربه سبحانه، فيقيم الصلاة في مواقيتها، ويؤتي الزكاة مستحقيها إن كان ممن ملك نصابها واستحقت عليه بشروطها، ويعبد ربه حتى يأتيه اليقين وهو الموت سمي بذلك لأنه لا شك في تحقيق وقوعه.';
String t1p5 =
    'ثم أخبر صلى الله عليه وسلم أنه ليس لهذا الرجل اجتماع مع الناس، ولا اختلاط بهم إلا فيما كان خيرا، كالجماعة والجمعة والعيدين وصلاة الجنازة وعيادة المريض وتشييع الجنازة، ونحو ذلك من أنواع الخيرات، والحاصل أنه معتزل عن الناس إلا فيما هو خير محض، وهذه العزلة المذكورة في هذا الحديث ليست رهبانية مثل رهبانية النصارى المذمومة في القرآن لأن الرهبانية النصرانية تتضمن إهمال الحقوق الواجبة للنفس والأهل والعباد، بخلاف هذه العزلة لأن المقصود منها ترك الاختلاط مع الناس عند وقوع الفتنة والشر، مع أداء حقوق النفس والأهل والناس.';

String t3p1 =
    'ما تزال الأيام تكشف حقيقة إعجاز القتال بين المؤمنين وبين اليهود في الأرض المقدسة مصداق هذا الخبر بصورة عجيبة، فما كانوا يقاتلونهم إلا في المستعمرات المحصنة في أرض فلسطين، فإذا انكشفوا لحظة واحدة ولوا الأدبار كالجرذان، حتى لكأن هذه الآية نزلت فيهم ابتداء وسبحان العليم الخبير.';
String t3p2 =
    'لَا يُقاتِلونكم جمِيعًا إِلا فِي قرًى مُّحَصنةٍ أو مِن وَراءِ جُدرٍ بَأسُهم بَينهُم شَدِيد تحسَبهُمْ جمِيعًا وَقلوبُهم شَتىٰ ذلِك بأنهُم قوم لَّا يَعقِلونَ.';
String t3p3 =
    'وتبقى الملامح النفسية الأخرى، بَينهُم شَدِيد تحسَبهُمْ جمِيعًا وَقلوبُهم شَتىٰ، على خلاف المؤمنين الذين تتضامن أجيالهم، وتجمعهم آصرة الإيمان من وراء فواصل الزمان والمكان، والجنس والوطن والعشيرة، ذلِك بأنهُم قوم لَّا يَعقِلونَ.';
String t3p4 =
    'والمظاهر قد تخدع فنرى تضامن الذين كفروا من أهل الكتاب فيما بينهم، ونرى عصبيتهم بعضهم لبعض، كما نرى تجمع المنافقين أحيانا في معسكر واحد، ولكن الخبر الصادق من السماء يأتينا بأنهم ليسوا كذلك في حقيقتهم  إنما هو مظهر خارجي خادع، وبين الحين والحين ينكشف هذا الستار الخداع، فيبدو من ورائه صدق الخبر في دنيا الواقع المنظور.';
String t3p5 =
    'وينكشف الحال عن نزاع في داخل المعسكر الواحد، قائم على اختلاف المصالح وتفرق الأهواء، وتصادم الاتجاهات، وما صدق المؤمنون مرة، وتجمعت قلوبهم على الله حقا إلا وانكشف المعسكر الآخر أمامهم عن هذه الاختلافات وهذا التضارب وهذا الرياء الذي لا يمثل حقيقة الحال، وما صبر المؤمنون وثبتوا إلا وشهدوا مظهر التماسك بين أهل الباطل يتفسخ وينهار، وينكشف عن الخلاف الحاد والشقاق والكيد والدس في القلوب الشتيتة المتفرقة.';
String t3p6 =
    'إنما ينال المنافقون والذين كفروا من أهل الكتاب،من المسلمين،عندما تتفرق قلوب المسلمين، فلا يعودون يمثلون حقيقة المؤمنين التي عرضتها الآية في المقطع السابق في هذه السورة، فأما في غير هذه الحالة فالمنافقون أضعف وأعجز، وهم والذين كفروا من أهل الكتاب متفرقو الأهواء والمصالح والقلوب ، بَأسُهم بَينهُم شَدِيد تحسَبهُمْ جمِيعًا وَقلوبُهم شَتىٰ.';
String t3p7 =
    'والقرآن يقر هذه الحقيقة في قلوب المؤمنين، ليهون فيها من شأن أعدائهم، ويرفع منها هيبة هؤلاء الأعداء ورهبتهم، فهو إيحاء قائم على حقيقة ، وتعبئة روحية ترتكن إلى حق ثابت، ومتى أخذ المسلمون قرآنهم مأخذ الجد هان عليهم أمر عدوهم وعدو الله، وتجمعت قلوبهم في الصف الواحد، فلم تقف لهم قوة في الحياة. ';
String t3p8 =
    'والمؤمنون بالله ينبغي لهم أن يدركوا حقيقة حالهم وحال أعدائهم، فهذا نصف المعركة، والقرآن يطلعهم على هذه الحقيقة في سياق وصفه لحادث وقع، وفي سياق التعقيب عليه، وشرح ما وراءه من حقائق ودلائل، شرحا يفيد منه الذين شهدوا ذلك الحادث بعينه، ويتدبره كل من جاء بعدهم، وأراد أن يعرف الحقيقة من العالم بالحقيقة.';

// END CONTEXTS -------------------------------------------------- //

// ActionSheetDay14
class ActionSheetDay14 {
  static void show(
    BuildContext context,
    bool isDarkMode,
    bool isCheckedDay14,
    VoidCallback toggleCheckDay14,
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
                    toggleCheckDay14();
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
                '14 رمضان',
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
                            !isCheckedDay14
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
  bool isCheckedDay14Task1 = false;
  bool isCheckedDay14Task2 = false;
  bool isCheckedDay14Task3 = false;
  bool isCheckedDay14Task4 = false;
// END INIT VARIABLES --------------------------------------------------------- //

// START LOAD INIT FUNCTIONS -------------------------------------------------- //
  @override
  void initState() {
    super.initState();
    loadTheme();
    _loadPreferences();
    checkboxDay14Task1();
    checkboxDay14Task2();
    checkboxDay14Task3();
    checkboxDay14Task4();
  }

// END LOAD INIT FUNCTIONS -------------------------------------------------- //

// START TASK1 -------------------------------------------------- //
  void checkboxDay14Task1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay14Task1 = prefs.getBool('isCheckedDay14Task1_1445') ?? false;
    });
  }

  void saveCheckboxDay14Task1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay14Task1_1445', value);
  }
// END TASK1 -------------------------------------------------- //

// START TASK2 -------------------------------------------------- //
  void checkboxDay14Task2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay14Task2 = prefs.getBool('checkboxDay14Task2_1445') ?? false;
    });
  }

  void saveCheckboxDay14Task2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxDay14Task2_1445', value);
  }
// END TASK2 -------------------------------------------------- //

// START TASK3 -------------------------------------------------- //
  void checkboxDay14Task3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay14Task3 = prefs.getBool('isCheckedDay14Task3_1445') ?? false;
    });
  }

  void saveCheckboxDay14Task3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay14Task3_1445', value);
  }
// END TASK3 -------------------------------------------------- //

// START TASK4 -------------------------------------------------- //
  void checkboxDay14Task4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay14Task4 = prefs.getBool('isCheckedDay14Task4_1445') ?? false;
    });
  }

  void saveCheckboxDay14Task4(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay14Task4_1445', value);
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
          isCheckedDay14Task1 = !isCheckedDay14Task1;
        });
        saveCheckboxDay14Task1(isCheckedDay14Task1);
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
            value: isCheckedDay14Task1,
            onChanged: (value) {
              setState(() {
                isCheckedDay14Task1 = value!;
              });
              saveCheckboxDay14Task1(value!);
            },
          ),
        ]),
      ),
    );

    final task2 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay14Task2 = !isCheckedDay14Task2;
        });
        saveCheckboxDay14Task2(isCheckedDay14Task2);
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
            value: isCheckedDay14Task2,
            onChanged: (value) {
              setState(() {
                isCheckedDay14Task2 = value!;
              });
              saveCheckboxDay14Task2(value!);
            },
          ),
        ]),
      ),
    );

    final task3 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay14Task3 = !isCheckedDay14Task3;
        });
        saveCheckboxDay14Task3(isCheckedDay14Task3);
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
            value: isCheckedDay14Task3,
            onChanged: (value) {
              setState(() {
                isCheckedDay14Task3 = value!;
              });
              saveCheckboxDay14Task3(value!);
            },
          ),
        ]),
      ),
    );

    final task4 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay14Task4 = !isCheckedDay14Task4;
        });
        saveCheckboxDay14Task4(isCheckedDay14Task4);
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
            value: isCheckedDay14Task4,
            onChanged: (value) {
              setState(() {
                isCheckedDay14Task4 = value!;
              });
              saveCheckboxDay14Task4(value!);
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
        paragraphContent(p3,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p4,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p6,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p7,
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
        paragraphContent(p13,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p14,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p24,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p25,
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
