import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utilities.dart';
import '../../seira/context/section79text.dart';

// START CONTEXTS -------------------------------------------------- //
int sectionIndex = 27;
const List t1 = [
  '1',
  'حديث: رُؤية المؤمنين لله تبارك وتعالى يوم القيامة كما يشاء سُبحانه'
];
const List t2 = ['2', 'سيرة: موعدكم معى عند الحوض'];
const List t3 = ['3', 'فوائد: تذكر دائماً أحوال رسول الله  ﷺ '];

String t1p1 =
    'عن أبو هريرة رضى الله عنه أن الناس قالوا: يا رسول الله هل نرى ربنا يوم القيامة؟ قال: هل تمارون في القمر ليلة البدر ليس دونه سحاب قالوا: لا يا رسول الله، قال: فهل تمارون في الشمس ليس دونها سحاب قالوا: لا، قال: فإنكم ترونه كذلك، يحشر الناس يوم القيامة، فيقول: من كان يعبد شيئا فليتبع، فمنهم من يتبع الشمس، ومنهم من يتبع القمر، ومنهم من يتبع الطواغيت، وتبقى هذه الأمة فيها منافقوها، فيأتيهم الله فيقول: أنا ربكم، فيقولون هذا مكاننا حتى يأتينا ربنا، فإذا جاء ربنا عرفناه، فيأتيهم الله فيقول: أنا ربكم، فيقولون: أنت ربنا، فيدعوهم فيضرب الصراط بين ظهراني جهنم، فأكون أول من يجوز من الرسل بأمته، ولا يتكلم يومئذ أحد إلا الرسل، وكلام الرسل يومئذ: اللهم سلم سلم، وفي جهنم كلاليب مثل شوك السعدان، هل رأيتم شوك السعدان؟ قالوا: نعم، قال: فإنها مثل شوك السعدان غير أنه لا يعلم قدر عظمها إلا الله، تخطف الناس بأعمالهم، فمنهم من يوبق بعمله، ومنهم من يخردل ثم ينجو، حتى إذا أراد الله رحمة من أراد من أهل النار، أمر الله الملائكة: أن يخرجوا من كان يعبد الله، فيخرجونهم ويعرفونهم بآثار السجود، وحرم الله على النار أن تأكل أثر السجود، فيخرجون من النار، فكل ابن آدم تأكله النار إلا أثر السجود، فيخرجون من النار، قد امتحشوا فيصب عليهم ماء الحياة، فينبتون كما تنبت الحبة في حميل السيل، ثم يفرغ الله من القضاء بين العباد ويبقى رجل بين الجنة والنار وهو آخر أهل النار دخولا الجنة مقبل بوجهه قبل النار، فيقول: يا رب اصرف وجهي عن النار، قد قشبني ريحها وأحرقني ذكاؤها، فيقول: هل عسيت إن فعل ذلك بك أن تسأل غير ذلك؟ فيقول: لا وعزتك، فيعطي الله ما يشاء من عهد وميثاق، فيصرف الله وجهه عن النار، فإذا أقبل به على الجنة، رأى بهجتها سكت ما شاء الله أن يسكت، ثم قال: يا رب قدمني عند باب الجنة، فيقول الله له: أليس قد أعطيت العهود والميثاق، أن لا تسأل غير الذي كنت سألت؟ فيقول: يا رب لا أكون أشقى خلقك، فيقول: فما عسيت إن أعطيت ذلك أن لا تسأل غيره؟ فيقول: لا وعزتك، لا أسأل غير ذلك، فيعطي ربه ما شاء من عهد وميثاق، فيقدمه إلى باب الجنة، فإذا بلغ بابها، فرأى زهرتها، وما فيها من النضرة والسرور، فيسكت ما شاء الله أن يسكت، فيقول: يا رب أدخلني الجنة، فيقول الله: ويحك يا ابن آدم، ما أغدرك، أليس قد أعطيت العهود والميثاق، أن لا تسأل غير الذي أعطيت؟ فيقول: يا رب لا تجعلني أشقى خلقك، فيضحك الله عز وجل منه، ثم يأذن له في دخول الجنة، فيقول: تمن، فيتمنى حتى إذا انقطع أمنيته، قال الله عز وجل: من كذا وكذا، أقبل يذكره ربه، حتى إذا انتهت به الأماني، قال الله تعالى: لك ذلك ومثله معه قال أبو سعيد الخدري لأبي هريرة رضي الله عنهما: إن رسول الله صلى الله عليه وسلم قال: قال الله: لك ذلك وعشرة أمثاله، قال أبو هريرة: لم أحفظ من رسول الله صلى الله عليه وسلم إلا قوله: لك ذلك ومثله معه قال أبو سعيد: إني سمعته يقول: ذلك لك وعشرة أمثاله.';
String t1p2 = 'أخرجه البخاري';

String t3p1 =
    'قال ابن الجوزى رحمه الله: من أراد أن يعلم حقيقة الرضى عن الله عز وجل ففي أفعاله وأن يدري من أين ينشأ الرضى، فليتفكر في أحوال رسول الله ﷺ فإنه لما تكاملت معرفته بالخالق سبحانه رأى أن الخالق مالك وللمالك التصرف في مملوكه، ورآه حكيما لا يصنع شيئا عبثا، فسلم تسليم مملوك لحكيم فكانت العجائب تجري عليه ولا يوجد منه تغير ولا من الطبع تأفف، ولا يقول بلسان الحال: لو كان كذا، بل يثبت للأقدار ثبوت الجبل لعواصف الرياح.';
String t3p2 =
    'هذا سيد الرسل ﷺ بعث إلى الخلق وحده، وبالكفر قد ملأ الآفاق فجعل يفر من مكان إلى مكان واستتر في دار الخيزران، وهم يضربونه إذا خرج ويدمون عقبه، وشق السلى على ظهره وهو ساكت ساكن، ويخرج كل موسم فيقول: من يؤويني من ينصرني؟ ثم خرج من مكة فلم يقدر على العود إلا في جواز كافر، ولم يوجد من الطبع تأنف ولا من الباطن اعتراض، إذ لو كان غيره لقال: يا رب أنت مالك الخلق وقادر على النصر فلم أذل؟ كما قال عمر رضي الله عنه يوم صلح الحديبية: ألسنا على الحق؟ فلم نعطي الدنية في ديننا؟ ولما قال هذا، قال له الرسول ﷺ: إني عبد الله ولن يضيعني، فجمعت الكلمتان الأصلين اللذين ذكرناهما، فقوله: إني عبد الله، إقرار بالملك وكأنه قال: أنا مملوك يفعل بي ما يشاء، وقوله: لن يضيعني، بيان حكمته، وأنه لا يفعل شيئا عبثا، ثم يبتلي بالجموع فيثد الحجر، ولله خزائن السموات والأرض.';
String t3p3 =
    'ويقتل أصحابه ويشج وجهه وتكسر رباعيته ويمثل بعمه وهو ساكت ثم يرزق ابنا ويسلب منه، فيتعلل بالحسن والحسين فيخبر بما سيجري عليهما، ويسكن بالطبع إلى عائشة رضي الله عنها فينغص عيشه بقذفها، ويبالغ في إظهار المعجزات فيقام في وجهه مسيلمة والعنسي وابن صياد، ويقيم ناموس الأمانة والصدق فيقال: كذاب ساحر، ثم يعلقه المرض كما يوعك رجلان وهو ساكن ساكت، فإن أخبر بحاله فليعلم الصبر، ثم يشدد عليه الموت، فيسلب روحه الشريفة وهو مضطجع في كساء ملبد وإزار غليظ، وليس عندهم زيت يوقد به المصباح ليلتئذ، هذا شيء ما قدر على الصبر عليه كما ينبغي نبي قلبه، ولو ابتليت به الملائكة ما صبرت.';
String t3p4 =
    'فهذا آدم عليه السلام يباح له الجنة سوى شجرة فلا يقع ذباب حرصه إلا على العقر، ونبينا ﷺ يقول في المباح: مالي وللدنيا، وهذا نوح عليه السلام يضج مما لاقى فيصبح من كمد وجده لا تذر على الأرض من الكافرين ديارا، ونبينا ﷺ يقول: اللهم اهد قومي فإنهم لا يعلمون، هذا الكليم موسى ﷺ، يستغيث عند عبادة قومه العجل على القدر قائلا إن هي إلا فتنتك ويوجه إليه ملك الموت فيقلع عينه، وعيسى ﷺ يقول: إن صرفت الموت عن أحد فاصرفه عني ، ونبينا ﷺ يخير بين البقاء والموت، فيختار الرحيل إلى الرفيق الأعلى، هذا سليمان ﷺ يقول: هب لي ملكا، ونبينا ﷺ يقول: اللهم اجعل رزق آل محمد قوتا هذا والله فعل رجل عرف الوجود والموجود، فماتت أغراضه وسكنت اعتراضاته فصار هواه فيما يجري.';

// END CONTEXTS -------------------------------------------------- //

// ActionSheetDay27
class ActionSheetDay27 {
  static void show(
    BuildContext context,
    bool isDarkMode,
    bool isCheckedDay27,
    VoidCallback toggleCheckDay27,
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
                    toggleCheckDay27();
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
                '27 رمضان',
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
                            !isCheckedDay27
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
  bool isCheckedDay27Task1 = false;
  bool isCheckedDay27Task2 = false;
  bool isCheckedDay27Task3 = false;
  bool isCheckedDay27Task4 = false;
// END INIT VARIABLES --------------------------------------------------------- //

// START LOAD INIT FUNCTIONS -------------------------------------------------- //
  @override
  void initState() {
    super.initState();
    loadTheme();
    _loadPreferences();
    checkboxDay27Task1();
    checkboxDay27Task2();
    checkboxDay27Task3();
    checkboxDay27Task4();
  }

// END LOAD INIT FUNCTIONS -------------------------------------------------- //

// START TASK1 -------------------------------------------------- //
  void checkboxDay27Task1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay27Task1 = prefs.getBool('isCheckedDay27Task1_1445') ?? false;
    });
  }

  void saveCheckboxDay27Task1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay27Task1_1445', value);
  }
// END TASK1 -------------------------------------------------- //

// START TASK2 -------------------------------------------------- //
  void checkboxDay27Task2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay27Task2 = prefs.getBool('checkboxDay27Task2_1445') ?? false;
    });
  }

  void saveCheckboxDay27Task2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxDay27Task2_1445', value);
  }
// END TASK2 -------------------------------------------------- //

// START TASK3 -------------------------------------------------- //
  void checkboxDay27Task3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay27Task3 = prefs.getBool('isCheckedDay27Task3_1445') ?? false;
    });
  }

  void saveCheckboxDay27Task3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay27Task3_1445', value);
  }
// END TASK3 -------------------------------------------------- //

// START TASK4 -------------------------------------------------- //
  void checkboxDay27Task4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay27Task4 = prefs.getBool('isCheckedDay27Task4_1445') ?? false;
    });
  }

  void saveCheckboxDay27Task4(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay27Task4_1445', value);
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
          isCheckedDay27Task1 = !isCheckedDay27Task1;
        });
        saveCheckboxDay27Task1(isCheckedDay27Task1);
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
            value: isCheckedDay27Task1,
            onChanged: (value) {
              setState(() {
                isCheckedDay27Task1 = value!;
              });
              saveCheckboxDay27Task1(value!);
            },
          ),
        ]),
      ),
    );

    final task2 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay27Task2 = !isCheckedDay27Task2;
        });
        saveCheckboxDay27Task2(isCheckedDay27Task2);
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
            value: isCheckedDay27Task2,
            onChanged: (value) {
              setState(() {
                isCheckedDay27Task2 = value!;
              });
              saveCheckboxDay27Task2(value!);
            },
          ),
        ]),
      ),
    );

    final task3 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay27Task3 = !isCheckedDay27Task3;
        });
        saveCheckboxDay27Task3(isCheckedDay27Task3);
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
            value: isCheckedDay27Task3,
            onChanged: (value) {
              setState(() {
                isCheckedDay27Task3 = value!;
              });
              saveCheckboxDay27Task3(value!);
            },
          ),
        ]),
      ),
    );

    final task4 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay27Task4 = !isCheckedDay27Task4;
        });
        saveCheckboxDay27Task4(isCheckedDay27Task4);
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
            value: isCheckedDay27Task4,
            onChanged: (value) {
              setState(() {
                isCheckedDay27Task4 = value!;
              });
              saveCheckboxDay27Task4(value!);
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
        paragraphContent(p5,
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
