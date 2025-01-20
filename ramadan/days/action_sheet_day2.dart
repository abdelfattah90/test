import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utilities.dart';

import '../../seira/context/section8text.dart';

// START CONTEXTS -------------------------------------------------- //
int sectionIndex = 2;
const List t1 = ['1', 'حديث: فضائل رمضان'];
const List t2 = ['2', 'سيرة: رسول الله ﷺ وبناء الكعبة'];
const List t3 = ['3', 'فوائد: معرفة الله'];

String t1p1 =
    'عن أبي هريرة رضي الله عنه أن رسول الله ﷺ كان يقول: الصلوات الخمس والجمعة إلى الجمعة ورمضان إلى رمضان مكفرات ما بينهن إذا اجتنب الكبائر. رواه البخاري ومسلم';
String t1p2 =
    'عن أبي هريرة رضي الله عنه أن رسول الله ﷺ قال: من صام رمضان إيمانًا واحتسابًا غفر له ما تقدم من ذنبه، ومن قام ليلة القدر إيمانًا واحتسابًا غفر له ما تقدم من ذنبه. رواه البخاري ومسلم';
String t1p3 =
    'عن أبي هريرة رضي الله عنه أن رسول الله ﷺ قال: من قام رمضان إيمانًا واحتسابًا غفر له ما تقدم من ذنبه. رواه البخاري ومسلم';
String t1p4 =
    'شهر رمضان من مواسم الخير التي تحمل النفحات التي أمرنا أن نتعرض لها وننهل من خيرها، ومن فضائل هذا الشهر الكريم ما ذكر في هذا الحديث مما يترتب على قيامه، والمقصود به صلاة التراويح، حيث قال صلى الله عليه وسلم: «من قام رمضان إيمانا واحتسابا غفر له ما تقدم من ذنبه»، أي: من فعل ذلك تصديقا بالمعبود الآمر له، وعلما بفضيلة هذا القيام، ومحتسبا جزيل أجره، لا يريد إلا الله تعالى وحده، لا يقصد رؤية الناس ولا غير ذلك مما يخالف الإخلاص؛ كان جزاء ذلك غفران ما تقدم من ذنوبه السابقة، غير الحقوق الآدمية المتعلقة بأموالهم أو أعراضهم أو أبدانهم؛ فهذه لا تسقط إلا برضاهم؛ فعلى الإنسان أن يطلب المسامحة ممن له عليه حق، أو يؤدي الحقوق إلى أهلها.وقد وقع الجزاء هنا بصيغة الماضي غفر مع أن المغفرة تكون في المستقبل ، للإشعار بأنه متيقن الوقوع، متحقق الثبوت، فضلا من الله تعالى على عباده.وفي الحديث: الحث على قيام شهر رمضان وبيان عظيم أجر ذلك.';

String t3p1 =
    'فمَعْرفَته سبحانه من طرِيقين أَحدهمَا النظر فِي مفعولاته وَالثَانِي التفكر فِي آيَاته وتدبّرها فتلك آيَاته المشهودة وَهذِه آيَاته المسموعة المعقولة فالنوع الأول كَقولِه إِنَّ فِي خلق السَّمَوَات وَالأرضِ وَاختِلافِ الليلِ وَالنَّهَارِ وَالفلكِ التِي تَجرِي فِي البَحرِ بِمَا يَنفعُ الناسَ إِلَى آخرهَا وَقوله إِن فِي خلق السمَوَات وَالأَرضِ وَاختِلافِ اللَيلِ وَالنهَارِ لَآياتٍ لِأولِي الألباب وَهُوَ كثير فِي القرآن وَالثانِي كَقَوْلِه {أفلا يَتدَبرونَ القرآن} وَقوله {أَفلم يَدبرُوا القول} وَقَوله {كِتَاب أنزَلناهُ إِلَيكَ مُبَارَك لِيَدبرُوا آيَاته}';
String t3p2 =
    'فأمّا المفعولات فَإِنهَا دالّة على الأَفعَال وَالأفعَال دالّة على الصِّفَات فَإِن المَفعول يدل على فَاعل فعله وَذلِكَ يستَلزم وجوده وَقدرته ومشيئته وَعلمه لِاستِحَالَة صُدُور الفِعل الِاختِيَارِي من مَعدوم أَو مَوجود لَا قدرَة لَهُ وَلا حَياة وَلَا علم وَلَا إِرَادَة ثمَّ مَا فِي المفعولات من التخصيصات المتنوعة دالّ على إِرَادَة الفَاعِل وَأَن فعله لَيسَ بالطبع بِحَيثُ يكون وَاحِدًا غير متكرر وَمَا فِيهَا من المصَالح وَالحكم والغايات المحمودة دَال على حكمته تَعَالَى وَمَا فِيهَا من النَّفع وَالإحسَان وَالخير دَال على رَحمته وَمَا فِيهَا من البَطش والانتقام والعقوبة دَال على غَضَبه وَمَا فِيهَا من الإِكرَام والتقريب والعناية دَال على محبّته وَمَا فِيهَا من الإهانة والإبعاد والخذلان دَال على بغضه ومقته وَمَا فِيهَا من ابتِدَاء الشَيء فِي غايَة النقص والضعف.';
String t3p3 =
    'ثمَّ سوقه إِلَى تَمَامه ونهايته دَال على وُقوع المعَاد وَمَا فِيهَا من أَحوَال النَّبَات وَالحَيَوَان وَتصرف المِيَاه دَلِيل على إِمكَان المعَاد وَمَا فِيهَا من ظهُور آثَار الرَّحمَة وَالنعمَة على خلقه دَلِيل على صحّة النبوّات وَمَا فِيهَا من الكمالات الَّتِي لَو عدمتها كَانَت نَاقِصَة دَلِيل على أَن معطي تِلْكَ الكمالات أَحَق بهَا فمفعولاته من أدل شَيء على صِفاته وَصدق مَا أخبرت بِهِ رسله عَنهُ فالمصنوعات شاهدة تصدق الْآيَات المسموعات منبّهة على الِاستِدلَال بِالآيَاتِ المصنوعات قَالَ تَعَالَى {سَنُرِيهِمْ آيَاتِنَا فِي الآفَاقِ وَفِي أَنْفُسِهِمْ حَتَّى يَتبين لهم أَنهُ الحَق}';
String t3p4 =
    'أَي أَن القرآن حق فأخبر أنّه لَا بُد من أَن يُرِيهم من آيَاته المشهودة مَا يبيّن لَهُم أَن آيَاته المتلوّة حق ثمَّ أخبر بكفاية شهَادَته على صِحَة خَبره بِمَا أَقَامَ من الدَّلَائِل والبراهين على صدق رَسُوله فآياته شاهدة بصدقه وَهوَ شَاهد بِصدق رَسُوله بآياته وَهوَ الشاهِد والمشهود لَهُ وَهُوَ الدَّلِيل والمدلول عَلَيهِ فهوَ الدلِيل بنفسِهِ على نفسه كَمَا قَالَ بعض العارفين كَيفَ أطلب لدَلِيل على من هُوَ دَلِيل على كل شَيء فَأَي دَلِيل طلبته عَلَيْهِ فوَجدَهُ أظهر مِنهُ وَلِهَذَا قَالَ الرُّسُل لقومهم {أَفِي اللَّهِ شَكّ} فَهُوَ أعرف من كل مَعْرُوف وَأبين من كل دَلِيل فالأشياء عُرفت بِهِ فِي الْحَقِيقَة وَإِن كَانَ عُرف بهَا فِي النّظر وَالِاسْتِدْلَال بأفعاله وَأَحْكَامه عَلَيْهِ.';

// END CONTEXTS -------------------------------------------------- //

// ActionSheetDay2
class ActionSheetDay2 {
  static void show(
    BuildContext context,
    bool isDarkMode,
    bool isCheckedDay2,
    VoidCallback toggleCheckDay2,
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
                    toggleCheckDay2();
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
                '2 رمضان',
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
                            !isCheckedDay2
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
  bool isCheckedDay2Task1 = false;
  bool isCheckedDay2Task2 = false;
  bool isCheckedDay2Task3 = false;
  bool isCheckedDay2Task4 = false;
// END INIT VARIABLES --------------------------------------------------------- //

// START LOAD INIT FUNCTIONS -------------------------------------------------- //
  @override
  void initState() {
    super.initState();
    loadTheme();
    _loadPreferences();
    checkboxDay2Task1();
    checkboxDay2Task2();
    checkboxDay2Task3();
    checkboxDay2Task4();
  }

// END LOAD INIT FUNCTIONS -------------------------------------------------- //

// START TASK1 -------------------------------------------------- //
  void checkboxDay2Task1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay2Task1 = prefs.getBool('isCheckedDay2Task1_1445') ?? false;
    });
  }

  void saveCheckboxDay2Task1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay2Task1_1445', value);
  }
// END TASK1 -------------------------------------------------- //

// START TASK2 -------------------------------------------------- //
  void checkboxDay2Task2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay2Task2 = prefs.getBool('checkboxDay2Task2_1445') ?? false;
    });
  }

  void saveCheckboxDay2Task2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxDay2Task2_1445', value);
  }
// END TASK2 -------------------------------------------------------- //

// START TASK3 -------------------------------------------------- //
  void checkboxDay2Task3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay2Task3 = prefs.getBool('isCheckedDay2Task3_1445') ?? false;
    });
  }

  void saveCheckboxDay2Task3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay2Task3_1445', value);
  }
// END TASK3 -------------------------------------------------- //

// START TASK4 -------------------------------------------------- //
  void checkboxDay2Task4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isCheckedDay2Task4 = prefs.getBool('isCheckedDay2Task4_1445') ?? false;
    });
  }

  void saveCheckboxDay2Task4(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isCheckedDay2Task4_1445', value);
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
          isCheckedDay2Task1 = !isCheckedDay2Task1;
        });
        saveCheckboxDay2Task1(isCheckedDay2Task1);
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
            value: isCheckedDay2Task1,
            onChanged: (value) {
              setState(() {
                isCheckedDay2Task1 = value!;
              });
              saveCheckboxDay2Task1(value!);
            },
          ),
        ]),
      ),
    );

    final task2 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay2Task2 = !isCheckedDay2Task2;
        });
        saveCheckboxDay2Task2(isCheckedDay2Task2);
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
            value: isCheckedDay2Task2,
            onChanged: (value) {
              setState(() {
                isCheckedDay2Task2 = value!;
              });
              saveCheckboxDay2Task2(value!);
            },
          ),
        ]),
      ),
    );

    final task3 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay2Task3 = !isCheckedDay2Task3;
        });
        saveCheckboxDay2Task3(isCheckedDay2Task3);
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
            value: isCheckedDay2Task3,
            onChanged: (value) {
              setState(() {
                isCheckedDay2Task3 = value!;
              });
              saveCheckboxDay2Task3(value!);
            },
          ),
        ]),
      ),
    );

    final task4 = GestureDetector(
      onTap: () {
        setState(() {
          isCheckedDay2Task4 = !isCheckedDay2Task4;
        });
        saveCheckboxDay2Task4(isCheckedDay2Task4);
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
            value: isCheckedDay2Task4,
            onChanged: (value) {
              setState(() {
                isCheckedDay2Task4 = value!;
              });
              saveCheckboxDay2Task4(value!);
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
