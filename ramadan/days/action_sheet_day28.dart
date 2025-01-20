import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utilities.dart';
import '../../seira/context/section80text.dart';

// START CONTEXTS -------------------------------------------------- //
int sectionIndex = 28;
const List t1 = [
  '1',
  'حديث: إن العبدَ المؤمن إذا كان في انقطاعٍ من الدنيا وإقبال إلى الآخرةِ'
];
const List t2 = ['2', 'سيرة: إلى الرفيق الأعلى'];
const List t3 = ['3', 'فوائد: الأستعداد ليوم الرحيل'];

String t1p1 =
    'خرجنا مع رسولِ اللهِ ﷺ في جنازةِ رجلٍ من الأنصارِ ، فانتهينا إلى القبرِ ولمَّا يُلحدْ . فجلسَ رسولُ اللهِ ﷺ وجلسنا حوله كأنَّ على رؤؤسِنا الطيرَ ، وفي يدِه عود ينكُت به في الأرضِ ، فرفع رأسَه فقال: استعيذوا باللهِ من عذابِ القبرِ مرتين أو ثلاثًا ، ثم قال : إن العبدَ المؤمن إذا كان في انقطاعٍ من الدنيا ، وإقبالٍ إلى الآخرةِ ، نزل إليه ملائكة من السماءِ بيضُ الوجوهِ ، كأن وجوههم الشمس ، معهم كفن من أكفانِ الجنةِ ، وحنوط من حنوطِ الجنةِ ، حتى يجلسوا منه مدَّ البصرِ ، ثمَّ يجيءَ ملكُ الموتِ ، حتى يجلسَ عند رأسِه ، فيقول: أيتُها النفسُ المطمئنة ، اخرُجِي إلى مغفرةٍ من اللهِ ورضوانٍ ، قال : فتخرجُ تسيلُ كما تسيلُ القطرةُ من فِي السِّقاءِ ، فيأخذها ، فإذا أخذها لم يدَعوها في يدِه طرفة عينٍ ، حتى يأخذوها فيجعلوها في ذلك الكفنِ ، وفي ذلك الحنوطِ ، ويخرجُ منها كأطيبِ نفحةِ مسكٍ وُجِدت على وجهِ الأرضِ ، فيصعدون بها فلا يمرُّون _ يعني _ بها على ملأٍ من الملائكةِ إلَّا قالوا: ما هذا الروحُ الطيبة؟ فيقولون: فلان بن فلانٍ ، بأحسنِ أسمائِه التي كانوا يُسمونه بها في الدنيا ، حتى ينتهوا به إلى السماءِ الدنيا ، فيستفتحون له ، فيُفتحُ له ، فيُشيعه من كلِّ سماءٍ مقربوها إلى السماءِ التي تليها ، حتى ينتهَى به إلى السماءِ السابعةِ فيقولُ اللهُ ، عزَّ وجلَّ: اكتبوا كتابَ عبدي في عليين ، وأعيدوه إلى الأرضِ ، فإني منها خلقتُهم ، وفيها أُعِيدُهم ، ومنها أخرِجهم تارةً أخرَى ، قالَ: فتُعاد روحُه فيأتيه ملَكان فيُجلِسانِه فيقولان له: من ربك؟ فيقولُ: ربِّي اللهُ ، فيقولان له ما دينك؟ فيقولُ: ديني الإسلامُ ، فيقولان له: ما هذا الرجلُ الذي بُعث فيكم؟ فيقولُ: هو رسولُ اللهِ ، فيقولان له: وما علمُك ؟ فيقولُ: قرأتُ كتابَ اللهِ فآمنتُ به وصدَّقتُ ، فينادي منادٍ من السماءِ: أن صدَق عبدي ، فأفرِشوه من الجنةِ ، وألبسوه من الجنةِ ، وافتحوا له بابًا إلى الجنَّةِ ، فيأتيِه من روحِها وطيبها ، ويُفسح له في قبرِه مدَّ بصرِه ، قال: ويأتيِه رجل حسَن الوجهِ ، حسَن الثيابِ ، طيب الريحِ ، فيقول: أبشِر بالذي يسُرُّك ، هذا يومُك الذي كنتَ تُوعد ، فيقولُ له: من أنتَ؟ فوجهك الوجهُ يجيءُ بالخيرِ ، فيقولُ: أنا عملُك الصالحُ ، فيقولُ: ربِّ أقِم الساعة ، ربِّ أقِم الساعة ، حتى أرجعَ إلى أهلي ومالي . قال: وإنَّ العبدَ الكافرَ ، إذا كانَ في انقطاعٍ من الدنيا وإقبالٍ من الآخرةِ ، نزل إليه من السماءِ ملائكة سودُ الوجوهِ معهم المُسوح ، فيجلسون منه مدَّ البصرِ ، ثم يجيءُ ملَكُ الموتِ حتى يجلسَ عندَ رأسِه ، فيقولُ: أيتها النفسُ الخبيثة ، اخرُجي إلى سخطٍ من اللهِ وغضبٍ ، قال : فتَفرق في جسدِه ، فينتزِعُها كما يُنتزَع السفودُ من الصوفِ المبلولِ ، فيأخذها ، فإذا أخذها لم يدَعوها في يدِه طرفة عينٍ حتى يجعلوها في تلك المُسوحِ ، ويخرجُ منها كأنتنِ ريحِ جيفةٍ وُجدَت على وجهِ الأرضِ ، فيصعدون بها فلا يمُرُّون بها على ملأٍ من الملائكةِ إلَّا قالوا: ما هذا الروحُ الخبيثة؟ فيقولون: فلان بن فلانٍ ، بأقبحِ أسمائِه التي كان يُسمى بها في الدُّنيا ، حتَّى يُنتهَى به إلى السماءِ الدنيا ، فيستفتحُ ، فلا يفتحُ له ، ثمَّ قرأ رسولُ اللهِ ﷺ : لَا تُفتحُ لَهُم أبوَابُ السماءِ وَلَا يَدخلونَ الجَنة حَتى يَلجَ الجَمَل فِي سَمِّ الخِيَاطِ ، فيقولُ اللهُ عزَّ وجلَّ: اكتُبوا كتابَه في سِجينٍ في الأرضِ السُّفلَى ، فتُطرحُ روحُه طرحًا ، ثمَّ قرأ: وَمَن يُشرِك باللَّهِ فكأنمَا خرَّ مِن السماءِ فتخطَفهُ الطيرُ أو تهوِي بهِ الرِّيحُ فِي مَكانٍ سَحِيقٍ - الحجُّ ، فتُعاد روحُه في جسدِه ، ويأتيه ملَكانِ فيُجلسانِه فيقولان له: من ربُّك؟ فيقولُ: هاه هاه ! لا أدري ! فيقولان: ما دينُك؟ فيقولُ: هاه هاه لا أدري ! فيقولان: ما هذا الرَّجلُ الَّذي بُعِث فيكم؟ فيقولُ: هاه هاه ! لا أدري ، فينادي منادٍ من السَّماءِ: أن كذب ، فأفرِشوه من النارِ ، وافتحوا له بابًا إلى النَّارِ ، فيأتيه من حرِّها وسَمومِها ، ويُضيق عليه قبرُه حتى تختلفَ فيه أضلاعُه ، ويأتيه رجل قبيحُ الوجهِ قبيحُ الثِّيابِ مُنتِنُ الرِّيحِ ، فيقولُ : أبشِر بالذي يسوؤك ، هذا يومُك الَّذي كنتَ تُوعدُ فيقولُ: من أنتَ ؟ فوجهُك الوجهُ يجيءُ بالشرّ ، فيقولُ: أنا عملك الخبيث ، فيقولُ: ربِّ لا تُقِمِ الساعةَ . وروَى أحمدُ أيضًا عن البراءِ بنِ عازبٍ قال: خرجنا معَ رسولِ اللهِ ﷺ إلى جِنازةٍ ، فذكر نحوَه ، وفيه: حتى إذا خرج روحُه صلَّى عليه كلُّ ملَكٍ بين السماءِ والأرضِ ، وكلُّ ملَكٍ في السَّماءِ ، وفُتِحَت له أبوابُ السماءِ ، ليس من أهلِ بابٍ إلا وهم يدعون اللهَ ، عزَّ وجلَّ ، أن يُعرَجَ بروحِه من قِبلِهم . وفي آخرِه: ثمَّ يُقيضُ له أعمَى أصمُّ أبكمُ ، في يدِه مِرزبة لو ضُرِبَ بها جبل كانَ ترابًا ، فيضربُه ضربةً فيصيرُ ترابًا ، ثمَّ يُعيدُه اللهُ عزَّ وجلَّ ، كما كانَ ، فيضربُه ضربةً أخرَى فيصيحُ صيحةً يسمعُها كلُّ شيءٍ إلَّا الثَّقلَيْن ، قال البراءُ: ثمَّ يُفتَحُ له باب من النارِ ، ويمهدُ له من فُرُشِ النَّارِ.';
String t1p2 = 'حديث صحيح - رواه أبو داود وأحمد والنسائي ';

String t3p1 =
    'قال ابن الجوزى رحمه الله: يجب على من لا يدري متى يبغته الموت أن يكون مستعدا ولا يغتر بالشباب والصحة فإن أقل من يموت الأشياخ وأكثر من يموت الشبان ولهذا يندر من يكبر، وقد أنشدوا: يعمر واحد فيغر قوما وينسى من يموت من الشباب ومن الإغترار طول الأمل وما من آفة أعظم منه، فإنه لولا طول الأمل ما وقع إهمال أصلا، وإنما يقدم المعاصي ويؤخر التوبة لطول الأمل وتبادر الشهوات وتنس الإنابة لطول الأمل، وإن لم تستطع قصر الأمل، فإعمل عمل قصير الأمل ولا تمس حتى تنظر فيما مضى من يومك، فإن رأيت زلة فامحها بتوبة أو خرقا فارقعه بإستغفار، وإذا أصبحت فتأمل ما مضى في ليلك وإياك والتسويف فإنه أكبر جنود إبليس، ثم صور لنفسك قصر العمر وكثرة الأشغال وقوة الندم على التفرط عند الموت وطول الحسرة على البدار بعد الفوت.';
String t3p2 =
    'والواجب على العاقل أخذ العدة لرحيله، فإنه لا يعلم متى يفجؤه أمر ربه ولا يدري متى يستدعى؟ وإني رأيت خلقا كثيرا غرهم الشباب ونسوا فقد الأقران وألهاهم طول الأمل، وربما قال العالم المحض لنفسه: أشتغل بالعلم اليوم ثم أعمل به غدا، فيتساهل في الزلل بحجة الراحة ويؤخر الأهبة لتحقيق التوبة، ولا يتحاشى من غيبة أو سماعها، ومن كسب شبهة يأمل أن يمحوها بالورع وينسى أن الموت قد يبغت، فالعاقل من أعطى كل لحظة حقها من الواجب عليه، فإن بغته الموت رؤى مستعدا، وإن نال الأمل ازداد خيرا.';

// END CONTEXTS -------------------------------------------------- //

// ActionSheetDay28
class ActionSheetDay28 {
  static void show(
    BuildContext context,
    bool isDarkMode,
    bool isCheckedDay28,
    VoidCallback toggleCheckDay28,
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
                    toggleCheckDay28();
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
                '28 رمضان',
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
                            !isCheckedDay28
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
  bool isCheckedDay28Task1 = false;
  bool isCheckedDay28Task2 = false;
  bool isCheckedDay28Task3 = false;
  bool isCheckedDay28Task4 = false;
// END INIT VARIABLES --------------------------------------------------------- //

// START LOAD INIT FUNCTIONS -------------------------------------------------- //
  @override
  void initState() {
    super.initState();
    loadTheme();
    _loadPreferences();
    checkboxDay28Task1();
    checkboxDay28Task2();
    checkboxDay28Task3();
    checkboxDay28Task4();
  }

// END LOAD INIT FUNCTIONS -------------------------------------------------- //

// START TASK1 -------------------------------------------------- //
  void checkboxDay28Task1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay28Task1 = prefs.getBool('isCheckedDay28Task1_1445') ?? false;
    });
  }

  void saveCheckboxDay28Task1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay28Task1_1445', value);
  }
// END TASK1 -------------------------------------------------- //

// START TASK2 -------------------------------------------------- //
  void checkboxDay28Task2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay28Task2 = prefs.getBool('checkboxDay28Task2_1445') ?? false;
    });
  }

  void saveCheckboxDay28Task2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxDay28Task2_1445', value);
  }
// END TASK2 -------------------------------------------------- //

// START TASK3 -------------------------------------------------- //
  void checkboxDay28Task3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay28Task3 = prefs.getBool('isCheckedDay28Task3_1445') ?? false;
    });
  }

  void saveCheckboxDay28Task3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay28Task3_1445', value);
  }
// END TASK3 -------------------------------------------------- //

// START TASK4 -------------------------------------------------- //
  void checkboxDay28Task4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay28Task4 = prefs.getBool('isCheckedDay28Task4_1445') ?? false;
    });
  }

  void saveCheckboxDay28Task4(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay28Task4_1445', value);
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
          isCheckedDay28Task1 = !isCheckedDay28Task1;
        });
        saveCheckboxDay28Task1(isCheckedDay28Task1);
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
            value: isCheckedDay28Task1,
            onChanged: (value) {
              setState(() {
                isCheckedDay28Task1 = value!;
              });
              saveCheckboxDay28Task1(value!);
            },
          ),
        ]),
      ),
    );

    final task2 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay28Task2 = !isCheckedDay28Task2;
        });
        saveCheckboxDay28Task2(isCheckedDay28Task2);
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
            value: isCheckedDay28Task2,
            onChanged: (value) {
              setState(() {
                isCheckedDay28Task2 = value!;
              });
              saveCheckboxDay28Task2(value!);
            },
          ),
        ]),
      ),
    );

    final task3 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay28Task3 = !isCheckedDay28Task3;
        });
        saveCheckboxDay28Task3(isCheckedDay28Task3);
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
            value: isCheckedDay28Task3,
            onChanged: (value) {
              setState(() {
                isCheckedDay28Task3 = value!;
              });
              saveCheckboxDay28Task3(value!);
            },
          ),
        ]),
      ),
    );

    final task4 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay28Task4 = !isCheckedDay28Task4;
        });
        saveCheckboxDay28Task4(isCheckedDay28Task4);
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
            value: isCheckedDay28Task4,
            onChanged: (value) {
              setState(() {
                isCheckedDay28Task4 = value!;
              });
              saveCheckboxDay28Task4(value!);
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
        paragraphContent(p4,
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
        paragraphContent(p28,
            isDarkMode: _preferencesManager.isDarkMode,
            fontSize: _preferencesManager.fontSize),
        paragraphContent(p31,
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
