import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utilities.dart';
import '../../seira/context/section7text.dart';

// START CONTEXTS -------------------------------------------------- //
int sectionIndex = 1;
const List t1 = ['1', 'حديث: إذا جاء رمضان فتحت أبواب الجنة'];
const List t2 = ['2', ' سيرة: عناية الله بالنبى ﷺ'];
const List t3 = ['3', 'فوائد: إيَّاك نعبدُ وإيَّاك نستعِينُ'];

String t1p1 =
    'عن أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: إذا كان أول ليلة من شهر رمضان صفدت الشياطين ومردة الجن وغلقت أبواب النار فلم يفتح منها باب، وفتحت أبواب الجنة، فلم يغلق منها باب وينادي مناد: يا باغي الخير أقبل ويا باغي الشر أقصر، ولله عتقاء من النار وذلك كل ليلة. رواه الترمذي.';
String t1p2 =
    'عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال: إذا جاء رمضان فُتّحـت أبواب الجنة، وغُـلّـقـت أبواب النار، وصُفّـدت الشـياطين. رواه مسلم.';
String t1p3 =
    'أن شهر رمضان المبارك عن غيره من الشهور وفيه تفتح أبواب الجنة، ترغيبا للعاملين لها بكثرة الطاعات من صلاةٍ وصيامٍ وصدقةٍ وذكرٍ وقراءةٍ للقرآن، وتغُلّقت أبواب النار أى تغلق أبواب النيران وذلك لقلة المعاصي فيه من المؤمنين ، وصُفّدت الشياطين أي شدَّت بالأصفاد وهي الأغلال، وهو بمعنى سلسلت، والمراد بالشياطين المردة منهم -كما جاء ذلك في رواية أخرى-، وهم أشد الشياطين عداوة وعدوانا على بني آدم، والمعنى: تُغل أيديهم حتى لا يخلصوا إلى ما كانوا يخلصون إليه في غيره، وكل هذا الذي أخبر به نبينا محمد صلى الله عليه وسلم حقٌّ، وقد أخبر به نُصحا للأمة، وتحفيزاً لها على الخير، وتحذيراً لها من الشر.';

String t3p1 =
    'للإنسَان قوتان قوة علمية نظرية وَقوة عملية إرادية وسعادته التامة مَوْقُوفَة على استكمال قوتيه العلمية الارادية واستكمال الْقُوَّة العلمية إِنَّمَا يكون بِمَعْرِِفَة فاطره وبارئه وَمَعرِفَة أَسمائِهِ وَصِفاته وَمَعرِفة الطرِيق التِي توصل إِلَيهِ وَمَعرِفة آفاتها وَمَعرِفة نفسه وَمَعرِفة عيوبها فبهذه المعارف الخَمسَة يحصل كَمَال قوته العلمية.';
String t3p2 =
    'وَأعلم النَاس أعرفهم بهَا وأفقههم فِيهَا استكمال القوة العلمية الإرادية لَا تحصل إِلَّا بمراعاة حقوقه سُبحَانهُ على العَبد وَالقِيَام بهَا إخلاصا وصدقا وَنصحا وإحسانا ومتابعة وشهودا لمنّته عَليهِ وتقصيره هوَ فِي أَدَاء حقّه فَهُوَ مستحي من مواجهته بِتِلكَ الخدمَة لعلمه أَنهَا دون مَا يستحقه عَلَيهِ وَدون دون ذلِك وَأَنه لَا سَبِيل لَهُ إِلَى استكمال هَاتين القوتين إِلَّا بمعونته فَهُوَ مُضطر إِلَى أَن يهديه الصِّرَاط المُستقيم الذِي هدى إِلَيهِ أولياءه وخاصته وَأَن يجنبه الخرُوج عَن ذلِك الصِّرَاط إِمَّا بِفساد فِي قوته العلمية فيَقع فِي الضلال واما فِي قوّته العملية فيُوجب لَهُ الغضَب.';
String t3p3 =
    'فكمال الإِنسَان وسعادته لَا تتمّ إِلَّا بمَجموع هَذِه الأمور وَقد تضمنتها سورَة الفاتِحَة وانتظمتها أكمل انتظام فَإِن قوله {الحَمد لله رب العَالمِينَ الرحمَنِ الرحِيمِ مَالِكِ يَومِ الدِّينِ} يتضمّن الأصل الأول وَهوَ معرفة الرب تَعَالَى وَمَعرِفَة أَسمائِهِ وَصِفاته وأفعاله والأسماء المَذكورَة فِي هَذِه السُّورَة هِيَ أصُول الأَسمَاء الحسنى وَهِي اسم الله والرب والرحمن فاسم الله متضمّن لصفات الألوهيّة.';
String t3p4 =
    'وَاسم الرب متضمّن الربوبية وَاسم الرَّحمَن مُتضَمّن لصفات الإِحسَان والجود وَالبر ومعاني أَسمَائِهِ تَدور لى هَذا وَقَوله {إِيَّاكَ نعبدُ وَإِيَّاكَ نَستَعِينُ} يتضمن معرفَة الطرِيق الموصلة إِليهِ وَأنهَا ليست إِلا عِبادته وَحده بِمَا يحبه ويرضاه واستعانته على عِبادَته وَقوله {اهدِنَا الصِّرَاط المُستَقيم} يتضمّن بيان أَن العَبد لَا سبيل لهُ إِلَى سعادته إِلَّا باستقامته على الصِّرَاط المستَقيم وَأنه لَا سَبيل لَهُ إِلَى الاستقامَة إِلَّا بهداية ربه لَهُ كمَا لَا سَبيل لَهُ إِلَى عِبادَته بمعونته فَلَا سَبيل لَهُ إِلَى الاستقامَة على الصِّرَاط إِلَّا بهدايته وَقوله {غيرِ المَغضُوبِ عَليهم وَلا الضالينَ} يتضمّن بَيَان طرفِي الانحراف عَن الصِّرَاط المُستَقيم.';
String t3p5 =
    'وَأَن الانحراف إِلَى أحد الطرفينِ انحراف إِلَى الضلال الذِي هوَ فسَاد العلم والاعتقاد والانحراف إِلَى الطّرف الآخر انحراف إِلَى الغضَب الذِي سَببه فسَاد القَصد وَالعمَل فأوّل السورَة رَحمَة وأوسطها هِدايَة وَآخِرهَا نعمَة وحظ العَبد من النِّعمَة على قدر حظه من الهِدَايَة وحظه مِنهَا على قدر حظه من الرَّحمَة فعَاد الأَمر كله إِلَى نعمَته وَرَحمته وَالنعمَة وَالرحمَة من لَوازِم ربوبيّته فلا يكون إِلَّا رحِيما منعما وَذلِكَ من مُوجبَات الهيّته فهُوَ الإِلَه الحق وَإِن جَحده الجاحدون وَعدل بِهِ المُشركُونَ فَمن تحقّق بمعاني الفَاتِحَة علما وَمَعرِفَة وَعَملا وَحَالا فقد فاز من كمَاله بأوفر نصيب وَصَارَت عبوديّته عبوديّة الخاصّة الَّذين ارتفعت درجتهم عَن عوام المتعبّدين وَالله المُستَعَان.';

// END CONTEXTS -------------------------------------------------- //

// ActionSheetDay1
class ActionSheetDay1 {
  static void show(
    BuildContext context,
    bool isDarkMode,
    bool isCheckedDay1,
    VoidCallback toggleCheckDay1,
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
                    toggleCheckDay1();
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
                '1 رمضان',
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
                            !isCheckedDay1
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
  bool isCheckedDay1Task1 = false;
  bool isCheckedDay1Task2 = false;
  bool isCheckedDay1Task3 = false;
  bool isCheckedDay1Task4 = false;
// END INIT VARIABLES --------------------------------------------------------- //

// START LOAD INIT FUNCTIONS -------------------------------------------------- //
  @override
  void initState() {
    super.initState();
    loadTheme();
    _loadPreferences();
    checkboxDay1Task1();
    checkboxDay1Task2();
    checkboxDay1Task3();
    checkboxDay1Task4();
  }

// END LOAD INIT FUNCTIONS -------------------------------------------------- //

// START TASK1 -------------------------------------------------- //
  void checkboxDay1Task1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay1Task1 = prefs.getBool('isCheckedDay1Task1_1445') ?? false;
    });
  }

  void saveCheckboxDay1Task1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay1Task1_1445', value);
  }
// END TASK1 -------------------------------------------------- //

// START TASK2 -------------------------------------------------- //
  void checkboxDay1Task2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay1Task2 = prefs.getBool('checkboxDay1Task2_1445') ?? false;
    });
  }

  void saveCheckboxDay1Task2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxDay1Task2_1445', value);
  }
// END TASK2 -------------------------------------------------------- //

// START TASK3 -------------------------------------------------- //
  void checkboxDay1Task3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay1Task3 = prefs.getBool('isCheckedDay1Task3_1445') ?? false;
    });
  }

  void saveCheckboxDay1Task3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay1Task3_1445', value);
  }
// END TASK3 -------------------------------------------------- //

// START TASK4 -------------------------------------------------- //
  void checkboxDay1Task4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay1Task4 = prefs.getBool('isCheckedDay1Task4_1445') ?? false;
    });
  }

  void saveCheckboxDay1Task4(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay1Task4_1445', value);
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
          isCheckedDay1Task1 = !isCheckedDay1Task1;
        });
        saveCheckboxDay1Task1(isCheckedDay1Task1);
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
            value: isCheckedDay1Task1,
            onChanged: (value) {
              setState(() {
                isCheckedDay1Task1 = value!;
              });
              saveCheckboxDay1Task1(value!);
            },
          ),
        ]),
      ),
    );

    final task2 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay1Task2 = !isCheckedDay1Task2;
        });
        saveCheckboxDay1Task2(isCheckedDay1Task2);
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
            value: isCheckedDay1Task2,
            onChanged: (value) {
              setState(() {
                isCheckedDay1Task2 = value!;
              });
              saveCheckboxDay1Task2(value!);
            },
          ),
        ]),
      ),
    );

    final task3 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay1Task3 = !isCheckedDay1Task3;
        });
        saveCheckboxDay1Task3(isCheckedDay1Task3);
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
            value: isCheckedDay1Task3,
            onChanged: (value) {
              setState(() {
                isCheckedDay1Task3 = value!;
              });
              saveCheckboxDay1Task3(value!);
            },
          ),
        ]),
      ),
    );

    final task4 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay1Task4 = !isCheckedDay1Task4;
        });
        saveCheckboxDay1Task4(isCheckedDay1Task4);
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
            value: isCheckedDay1Task4,
            onChanged: (value) {
              setState(() {
                isCheckedDay1Task4 = value!;
              });
              saveCheckboxDay1Task4(value!);
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
      ],
      isDarkMode: _preferencesManager.isDarkMode,
    );

    final seira = createParagraph(
      paragraphTitle(t2[0], t2[1], sectionIndex,
          isSpecial: true, isDarkMode: _preferencesManager.isDarkMode),
      [
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
