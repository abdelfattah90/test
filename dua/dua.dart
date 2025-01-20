import 'package:flutter/material.dart';

import 'dua_routes/route_dua_prayers.dart';
import 'dua_routes/route_dua_sad.dart';
import 'dua_routes/route_dua_quran.dart';
import 'dua_routes/route_dua_book.dart';
import '../utilities/utilities.dart';

class DuaScreen extends StatefulWidget {
  const DuaScreen({super.key});

  @override
  State<DuaScreen> createState() => _DuaScreenState();
}

class _DuaScreenState extends State<DuaScreen> {
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
          backgroundColor: _preferencesManager.isDarkMode
              ? colorStatusBarSeira
              : colorStatusBarSeiraDark,
          title: const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'أدعيــة المسلــم',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'swissr',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(),
          foregroundColor: const Color(0xFFFFFFFF),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/dua.png',
                height: 25.0,
                width: 25.0,
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: _preferencesManager.isDarkMode
            ? const Color(0xFFEDEDED)
            : const Color(0xFF1B1B1B),
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: RouteDuaPrayers(
                            isDarkMode: _preferencesManager.isDarkMode),
                      ),
                      Expanded(
                        flex: 1,
                        child: RouteDuaBook(
                            isDarkMode: _preferencesManager.isDarkMode),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: RouteDuaSad(
                            isDarkMode: _preferencesManager.isDarkMode),
                      ),
                      Expanded(
                        flex: 1,
                        child: RouteDuaQuran(
                            isDarkMode: _preferencesManager.isDarkMode),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      createParagraph(
                          paragraphTitle('0', 'دعاء سيد الاستغفار', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'اللّهـم أنتَ رَبِـي لا إلهَ إلا أنتَ خَلقتنـي وأنا عَبـدُك، وأنا علـى عَهـدِكَ وَوعـدِك ما استـطعـت، أعـوذُ بِكَ مِن شـرِ ما صَنـعت، أبـوءُ لـكَ بِنِعـمَتِـكَ علـيَّ وأبـوءُ بِذنـبي فاغفـِر لي فإِنـهُ لا يَغـفِرُ الذنـوبَ إِلا أنتَ ... من قالهَا من الليلِ أو النهَارِ وهوَ مُوقن بهَا فماتَ قبل أن يُصبح أو قَبلَ أن يُمسِيَ فهو مِن أهلِ الجَنةِ.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء السفر', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'اللّه أكبر اللّه أكبر اللّه أكبر، سُبْحانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ وَإِنَّا إِلَى رَبِّنَا لَمُنقَلِبُونَ ، اللهم إنا نسألُكَ في سفرنا هذا البرَّ والتقوى، ومن العمل ما ترضى، اللهم هون علينا سفرنا هذا واطو عنا بعده، اللهم أنت الصاحب في السفر، والخليفة في الأهل، اللهم إني أعوذ بك من وعْثاءِ السفر، وكآبة المنظر وسوء المنقلب في المال والأهل .. وإذا رجع قالهن وزاد فيهن، آيبون تائبون عابدون لربنا حامدون.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء دخول القرية', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'اللهم رب السموات السبع وما أظللن، ورب الأرضين السبع وما أقللن، ورب الشياطين وما أضللن، ورب الرياح وما ذرين، أسألك خير هذه القرية وخير أهلها، وخير ما فيها، وأعوذ بك من شرها، وشر أهلها، وشر ما فيها - رواه النسائي في السنن.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'ما يقول الرجل إذا أتى أهلهُ', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'عن ابن عَباس رضِيَ اللّه عنه قالَ: قالَ النبي صلّى اللّه عليهِ وسلّم: لو أن أحدَهُمْ إذا أرادَ أن يأتِيَ أهلهُ قال بِاسم اللَّهِ اللهُم جنبنَا الشيطانَ وجنب الشيطانَ ما رزقتنَا ، فإنهُ إن يُقَدر بينهُمَا ولد فِي ذلِك لم يضُرهُ شيطان أبدًا.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء النوم والاستيقاظ', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'عن حذيفة رضى الله عنه قال: كان النبي ﷺ إذا أخذ مضجعه من الليل وضع يده تحت خده، ثم يقول: اللهم باسمك أموت وأحيا ، وإذا استيقظ قال: الحمد لله الذي أحيانا بعد ما أماتنا وإليه النشور - رواه البخاري',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء الوضوء', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'قبل الوضوء: بسم اللّه .. أما بعد الوضوء: أشهد أن لا إله إلا الله وحده لا شريك له، وأشهد أن محمداً عبده ورسوله.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء الخروج من المنزل', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'عن أنس بن مالك رضي الله عنه أن النبي ﷺ قال: «إِذا خرج الرجل من بيتِه فقال: بسمِ اللّه توكّلتُ على اللَّه، ولا حول ولا قُوة إلا بِاللّه قال: يُقالُ حينئذ: هُديت وكُفيتَ ووُقِيت، فتتنحى لهُ الشياطِينُ.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                            paragraphContent(
                                'وعن أمِّ سلمة رضي الله عنها قالت: ما خرج النبي ﷺ من بيتي قطُّ إلا رفع طَرفهُ إلى السماء فقال: اللهُم أعوذُ بك أن أضِل أو أضَل، أو أزِل أو أُزل، أو أظلِم أَو أُظلَمَ، أو أَجهَلَ أو يُجهَل عَليَّ.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء دخول والخروج من المسجد', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                ' كان رسول اللَّهِ صلى اللَّهِ عليه وسلم إِذا دخل المسجد قال: رَبِّ اغفر لي ذنوبِي وافتح لِي أبواب رحمتِك .. وإِذا خرَج قالَ: رَبِّ اغفر لي ذنوبِي، وافتح لِي أبوَاب فَضلِك.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء رؤية الهلال', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'كان النبي صلى اللّه عليه وسلم إِذا رأى الهِلالَ قال: اللهم أهلِلهُ علينا باليُمنِ والإِيمانِ والسلامةِ والإِسلام، ربّي وربكَ اللّهُ - رواه الترمذي',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'الدعاء عند الخلاء', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'ثبت عن النبي ﷺ أنه كان إذا أراد دخول الخلاء قال: أعوذ بالله من الخبث والخبائث، وذلك: التعوذ من الشر والأفعال الخبيثة، وفسره بعض أهل العلم: بذكور الشياطين وإناثهم، وإذا كان في الصحراء قال هذا التعوذ عند إرادة قضاء حاجته، وهذا التعوذ يقال قبل دخول الخلاء لا بعده، وبعد الخروج يقول: غفرانك.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'الدعاء فور نزول البلاء', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'الحمد لله وإنا لله وإنا إليه راجعون، اللهم آجرني في مصيبتي وأخلف لي خيرًا منها.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء دخول المقابر', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'السلام عليكم أهل الديار من المؤمنين والمسلمين وإنا إن شاء الله بكم لاحقون، يرحم الله المستقدمين منا والمستأخرين، نسأل الله لنا ولكم العافية.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء من رأى مُبتَلى', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'قال ﷺ : من رأى صاحب بلاء فقال: الحمد لله الذي عافاني مما ابتلاك به وفضلني على كثير ممن خلق تفضيلاً لم يصبه ذلك البلاء - رواه الترمذي ، ويكون الدعاء فى السر لا بالجهر.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'دعاء انتهاء المجلس', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'سبحانك اللهم وبحمدك ، أشهد أن لا إله إلا أنت أستغفرك وأتوب إليك.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                      createParagraph(
                          paragraphTitle('0', 'أوقات المستحب فيها الدعاء', 0,
                              isCompanion: true,
                              isDarkMode: _preferencesManager.isDarkMode),
                          [
                            paragraphContent(
                                'الثلث الأخير من الليل: عن أبِي سعيد وأبي هُريرة قالا: قال رسُول اللَّه صلى اللّه عليهِ وسلم: إِن اللّهَ يُمهلُ حتى إذا ذهبَ ثُلث الليل الأولُ نزل إِلى السماءِ الدنيَا فيقُولُ: هل مِن مُستغفِرٍ، هل من تائبٍ، هل من سائلٍ، هل مِنْ دَاعٍ، حتى ينْفجرَ الفجرُ.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                            paragraphContent(
                                'اثناء السجود: عن أبي هريرةَ رضى اللّه عنه أنَّ رسُولَ اللَّه ﷺ قالَ: أقربُ ما يكون العبدُ من ربهِ وهو ساجد فأكثرُوا الدُّعاءَ - رواهُ مسلم',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                            paragraphContent(
                                'يوم الجمعة: عن أبي هُريرة رضى اللّه عنه قال: قَالَ رسول اللّه صلى اللّه عليهِ وسلم: أن فِي الجمعةِ ساعَة لا يُوافقُها عبد مُسلم قائِمٌ يُصَلِّي فسأل اللَّه خيرًا إِلا أعطَاهُ .. وقد اختلف في تحديد وقت هذه الساعة، وفيها قولان، الاول: قال ابن القيم رحمه الله: أنها من جلوس الإمام إلى انقضاء الصلاة، والقول الثانى وهو قول عبد الله بن سلام وأبي هريرة والإمام أحمد : أنها بعد العصر.',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                            paragraphContent(
                                'بين الاذان والاقامة: قال رسول اللَّه صلى اللَّه علَيْهِ وسلم: لا يُرد الدعاء بين الأذان والإقامة - رواه أبو داود والتّرمذي',
                                isDarkMode: _preferencesManager.isDarkMode,
                                fontSize: _preferencesManager.fontSize),
                          ],
                          isDarkMode: _preferencesManager.isDarkMode),
                    ],
                  ),
                ),
                const SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
