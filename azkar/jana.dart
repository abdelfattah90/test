import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utilities/utilities.dart';

class Jana extends StatefulWidget {
  const Jana({super.key});

  @override
  State<Jana> createState() => _JanaState();
}

class _JanaState extends State<Jana> {
  late SharedPreferences _prefsPBUH;
  late SharedPreferences _prefsForgiveness;
  late SharedPreferences _prefsPraise;
  late SharedPreferences _prefsOne;
  late SharedPreferences _prefsPlam;
  late SharedPreferences _prefsTreasure;
  late SharedPreferences _prefsPlant;
  late SharedPreferences _prefsHome;

  int _counterPBUH = 0;
  int _counterForgiveness = 0;
  int _counterPraise = 0;
  int _counterOne = 0;
  int _counterPlam = 0;
  int _counterTreasure = 0;
  int _counterPlant = 0;
  int _counterHome = 0;
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _initCounterPBUH();
    _initCounterForgiveness();
    _initCounterPraise();
    _initCounterOne();
    _initCounterPlam();
    _initCounterTreasure();
    _initCounterPlant();
    _initCounterHome();
    loadTheme();
  }

// Start PBUH Future
  Future<void> _initCounterPBUH() async {
    _prefsPBUH = await SharedPreferences.getInstance();
    setState(() {
      _counterPBUH = _prefsPBUH.getInt('counterpbuh') ?? 0;
    });
  }

  Future<void> _incrementCounterPBUH() async {
    setState(() {
      _counterPBUH++;
      if (_counterPBUH == 999999) {
        _counterPBUH = 0;
      }
    });
    await _prefsPBUH.setInt('counterpbuh', _counterPBUH);
  }

  Future<void> _resetCounterPBUH() async {
    setState(() {
      _counterPBUH = 0;
    });
    await _prefsPBUH.remove('counterpbuh');
  }
// End PBUH Future

// Start Forgiveness Future
  Future<void> _initCounterForgiveness() async {
    _prefsForgiveness = await SharedPreferences.getInstance();
    setState(() {
      _counterForgiveness = _prefsForgiveness.getInt('counterforgiveness') ?? 0;
    });
  }

  Future<void> _incrementCounterForgiveness() async {
    setState(() {
      _counterForgiveness++;
      if (_counterForgiveness == 999999) {
        _counterForgiveness = 0;
      }
    });
    await _prefsForgiveness.setInt('counterforgiveness', _counterForgiveness);
  }

  Future<void> _resetCounterForgiveness() async {
    setState(() {
      _counterForgiveness = 0;
    });
    await _prefsForgiveness.remove('counterforgiveness');
  }
// End Forgiveness Future

// Start Praise Future
  Future<void> _initCounterPraise() async {
    _prefsPraise = await SharedPreferences.getInstance();
    setState(() {
      _counterPraise = _prefsPraise.getInt('counterpraise') ?? 0;
    });
  }

  Future<void> _incrementCounterPraise() async {
    setState(() {
      _counterPraise++;
      if (_counterPraise == 999999) {
        _counterPraise = 0;
      }
    });
    await _prefsPraise.setInt('counterpraise', _counterPraise);
  }

  Future<void> _resetCounterPraise() async {
    setState(() {
      _counterPraise = 0;
    });
    await _prefsPraise.remove('counterpraise');
  }
// End Praise Future

// Start One Future
  Future<void> _initCounterOne() async {
    _prefsOne = await SharedPreferences.getInstance();
    setState(() {
      _counterOne = _prefsOne.getInt('counterone') ?? 0;
    });
  }

  Future<void> _incrementCounterOne() async {
    setState(() {
      _counterOne++;
      if (_counterOne == 999999) {
        _counterOne = 0;
      }
    });
    await _prefsOne.setInt('counterone', _counterOne);
  }

  Future<void> _resetCounterOne() async {
    setState(() {
      _counterOne = 0;
    });
    await _prefsOne.remove('counterone');
  }
// End One Future

// Start Plam Future
  Future<void> _initCounterPlam() async {
    _prefsPlam = await SharedPreferences.getInstance();
    setState(() {
      _counterPlam = _prefsPlam.getInt('counterplam') ?? 0;
    });
  }

  Future<void> _incrementCounterPlam() async {
    setState(() {
      _counterPlam++;
      if (_counterPlam == 999999) {
        _counterPlam = 0;
      }
    });
    await _prefsPlam.setInt('counterplam', _counterPlam);
  }

  Future<void> _resetCounterPlam() async {
    setState(() {
      _counterPlam = 0;
    });
    await _prefsPlam.remove('counterplam');
  }
// End Plam Future

// Start Treasure Future
  Future<void> _initCounterTreasure() async {
    _prefsTreasure = await SharedPreferences.getInstance();
    setState(() {
      _counterTreasure = _prefsTreasure.getInt('countertreasure') ?? 0;
    });
  }

  Future<void> _incrementCounterTreasure() async {
    setState(() {
      _counterTreasure++;
      if (_counterTreasure == 999999) {
        _counterTreasure = 0;
      }
    });
    await _prefsPlam.setInt('countertreasure', _counterTreasure);
  }

  Future<void> _resetCounterTreasure() async {
    setState(() {
      _counterTreasure = 0;
    });
    await _prefsTreasure.remove('countertreasure');
  }

// End Treasure Future

// Start Plant Future
  Future<void> _initCounterPlant() async {
    _prefsPlant = await SharedPreferences.getInstance();
    setState(() {
      _counterPlant = _prefsPlant.getInt('counterplant') ?? 0;
    });
  }

  Future<void> _incrementCounterPlant() async {
    setState(() {
      _counterPlant++;
      if (_counterPlant == 999999) {
        _counterPlant = 0;
      }
    });
    await _prefsPlant.setInt('counterplant', _counterPlant);
  }

  Future<void> _resetCounterPlant() async {
    setState(() {
      _counterPlant = 0;
    });
    await _prefsPlant.remove('counterplant');
  }

// End Plant Future

// Start Home Future
  Future<void> _initCounterHome() async {
    _prefsHome = await SharedPreferences.getInstance();
    setState(() {
      _counterHome = _prefsHome.getInt('counterhome') ?? 0;
    });
  }

  Future<void> _incrementCounterHome() async {
    setState(() {
      _counterHome++;
      if (_counterHome == 350) {
        _counterHome = 0;
      }
    });
    await _prefsHome.setInt('counterhome', _counterHome);
  }

  Future<void> _resetCounterHome() async {
    setState(() {
      _counterHome = 0;
    });
    await _prefsHome.remove('counterhome');
  }

  // Future<void> _decrementCounterHome() async {
  //   setState(() {
  //     _counterHome--;
  //     if (_counterHome < 1) {
  //       _counterHome = 0;
  //     }
  //   });
  //   await _prefsHome.setInt('counterhome', _counterHome);
  // }

// End Home Future

  loadTheme() async {
    bool isDarkMode = await ThemePreferences.isDarkMode();
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    var janaPBUH = Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
              style: TextStyle(
                fontFamily: 'dinnextregular',
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              ' قال رسول الله ﷺ'),
        ),
        Text(
            style: TextStyle(
              fontFamily: 'dinnextregular',
              fontWeight: FontWeight.bold,
              color: _isDarkMode
                  ? const Color(0xFF474747)
                  : const Color(0xFFEBEBEB),
            ),
            'مَن صلى عليَّ صلاَة، صلى اللَّه عليهِ بهَا عشرًا'),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF3B3B3B),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFFFFFFF)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF7F7F7)
                            : const Color(0xFF303030),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: _incrementCounterPBUH,
                    child: Image.asset(
                      'assets/images/jana/masjid_nabawi.png',
                      height: 200,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                _isDarkMode
                                    ? const Color(0xFFEEEEEE)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0x9BF2F2F2)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xE1FFFFFF)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xFFECECEC)
                                    : const Color(0xFF373737),
                              ],
                            ),
                          ),
                          child: Text(
                            '$_counterPBUH',
                            style: const TextStyle(
                              fontSize: 50,
                              color: Color(0xFF319B78),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Ink(
                              decoration: const ShapeDecoration(
                                color: Color(0x80D1BFA9),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.refresh),
                                color: _isDarkMode
                                    ? const Color(0xFF949494)
                                    : const Color(0xFF8A8A8A),
                                onPressed: _resetCounterPBUH,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    var janaForgiveness = Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
              style: TextStyle(
                fontFamily: 'dinnextregular',
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              ' قال رسول الله ﷺ'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'dinnextregular',
                fontWeight: FontWeight.bold,
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              'من لزم الاستِغفار جعلَ اللَّه له مِن كل ضِيقٍ مخرجًا، ومن كل هَمٍّ فرجًا ورزقهُ مِن حيث لاَ يَحتسِبُ'),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF3B3B3B),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFFFFFFF)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF7F7F7)
                            : const Color(0xFF303030),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: _incrementCounterForgiveness,
                    child: Image.asset(
                      'assets/images/jana/tasbih.png',
                      height: 200,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                _isDarkMode
                                    ? const Color(0xFFEEEEEE)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0x9BF2F2F2)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xE1FFFFFF)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xFFECECEC)
                                    : const Color(0xFF373737),
                              ],
                            ),
                          ),
                          child: Text(
                            '$_counterForgiveness',
                            style: const TextStyle(
                              fontSize: 50,
                              color: Color(0xFF319B78),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Ink(
                              decoration: const ShapeDecoration(
                                color: Color(0x80D1BFA9),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.refresh),
                                color: _isDarkMode
                                    ? const Color(0xFF949494)
                                    : const Color(0xFF8A8A8A),
                                onPressed: _resetCounterForgiveness,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    var janaPraise = Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
              style: TextStyle(
                fontFamily: 'dinnextregular',
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              ' قال رسول الله ﷺ'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'dinnextregular',
                fontWeight: FontWeight.bold,
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              'كلمتان خفيفتان على اللسان ثقيلتان في الميزان حبيبتان إلى الرحمن ، سبحان الله وبحمده سبحان الله العظيم'),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF3B3B3B),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFFFFFFF)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF7F7F7)
                            : const Color(0xFF303030),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: _incrementCounterPraise,
                    child: Image.asset(
                      'assets/images/jana/praise.png',
                      height: 200,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                _isDarkMode
                                    ? const Color(0xFFEEEEEE)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0x9BF2F2F2)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xE1FFFFFF)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xFFECECEC)
                                    : const Color(0xFF373737),
                              ],
                            ),
                          ),
                          child: Text(
                            '$_counterPraise',
                            style: const TextStyle(
                              fontSize: 50,
                              color: Color(0xFF319B78),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Ink(
                              decoration: const ShapeDecoration(
                                color: Color(0x80D1BFA9),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.refresh),
                                color: _isDarkMode
                                    ? const Color(0xFF949494)
                                    : const Color(0xFF8A8A8A),
                                onPressed: _resetCounterPraise,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    var janaOne = Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
              style: TextStyle(
                fontFamily: 'dinnextregular',
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              ' قال رسول الله ﷺ'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'dinnextregular',
                fontWeight: FontWeight.bold,
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              'من قال إذا أصبح: لا إله إلا الله وحده لا شريك له له الملك وله الحمد وهو على كل شيء قدير كان له عدل رقبة من ولد إسماعيل، وكتب له عشر حسنات وحط عنه عشر سيئات، ورفع له عشر درجات وكان في حرز من الشيطان حتى يمسي، وإن قالها إذا أمسى كان له مثل ذلك حتى يصبح'),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF3B3B3B),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFFFFFFF)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF7F7F7)
                            : const Color(0xFF303030),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: _incrementCounterOne,
                    child: Image.asset(
                      'assets/images/jana/one.png',
                      height: 200,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                _isDarkMode
                                    ? const Color(0xFFEEEEEE)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0x9BF2F2F2)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xE1FFFFFF)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xFFECECEC)
                                    : const Color(0xFF373737),
                              ],
                            ),
                          ),
                          child: Text(
                            '$_counterOne',
                            style: const TextStyle(
                              fontSize: 50,
                              color: Color(0xFF319B78),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Ink(
                              decoration: const ShapeDecoration(
                                color: Color(0x80D1BFA9),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.refresh),
                                color: _isDarkMode
                                    ? const Color(0xFF949494)
                                    : const Color(0xFF8A8A8A),
                                onPressed: _resetCounterOne,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    var janaPlam = Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
              style: TextStyle(
                fontFamily: 'dinnextregular',
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              ' قال رسول الله ﷺ'),
        ),
        Text(
            style: TextStyle(
              fontFamily: 'dinnextregular',
              fontWeight: FontWeight.bold,
              color: _isDarkMode
                  ? const Color(0xFF474747)
                  : const Color(0xFFEBEBEB),
            ),
            'من قال سبحان اللهِ وبحمدِه غرسَت له نخلة في الجنةِ'),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF3B3B3B),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFFFFFFF)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF7F7F7)
                            : const Color(0xFF303030),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: _incrementCounterPlam,
                    child: Image.asset(
                      'assets/images/jana/palm.png',
                      height: 200,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                _isDarkMode
                                    ? const Color(0xFFEEEEEE)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0x9BF2F2F2)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xE1FFFFFF)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xFFECECEC)
                                    : const Color(0xFF373737),
                              ],
                            ),
                          ),
                          child: Text(
                            '$_counterPlam',
                            style: const TextStyle(
                              fontSize: 50,
                              color: Color(0xFF319B78),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Ink(
                              decoration: const ShapeDecoration(
                                color: Color(0x80D1BFA9),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.refresh),
                                color: _isDarkMode
                                    ? const Color(0xFF949494)
                                    : const Color(0xFF8A8A8A),
                                onPressed: _resetCounterPlam,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    var janaTreasure = Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
              style: TextStyle(
                fontFamily: 'dinnextregular',
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              ' قال رسول الله ﷺ'),
        ),
        Text(
            style: TextStyle(
              fontFamily: 'dinnextregular',
              fontWeight: FontWeight.bold,
              color: _isDarkMode
                  ? const Color(0xFF474747)
                  : const Color(0xFFEBEBEB),
            ),
            ' لا حول ولا قوة إلا باللَّهِ  كنز مِن كنوز الجنةِ'),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF3B3B3B),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFFFFFFF)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF7F7F7)
                            : const Color(0xFF303030),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: _incrementCounterTreasure,
                    child: Image.asset(
                      'assets/images/jana/treasure-chest.png',
                      height: 200,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                _isDarkMode
                                    ? const Color(0xFFEEEEEE)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0x9BF2F2F2)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xE1FFFFFF)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xFFECECEC)
                                    : const Color(0xFF373737),
                              ],
                            ),
                          ),
                          child: Text(
                            '$_counterTreasure',
                            style: const TextStyle(
                              fontSize: 50,
                              color: Color(0xFF319B78),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Ink(
                              decoration: const ShapeDecoration(
                                color: Color(0x80D1BFA9),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.refresh),
                                color: _isDarkMode
                                    ? const Color(0xFF949494)
                                    : const Color(0xFF8A8A8A),
                                onPressed: _resetCounterTreasure,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    var janaPlant = Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
              style: TextStyle(
                fontFamily: 'dinnextregular',
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              ' قال رسول الله ﷺ'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'dinnextregular',
                fontWeight: FontWeight.bold,
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              'لقيتُ إبراهيم ليلة أُسريَ بي فقال: يا محمد أقرئ أمتك مني السلام وأخبرهم أن الجنة طيبة التربة عذبة الماء، وأنها قيعان وأن غِراسها سبحان اللَّهِ والحمد للَّهِ ولا إله إلا اللَّهُ واللَّهُ أكبر'),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF3B3B3B),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFFFFFFF)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF7F7F7)
                            : const Color(0xFF303030),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: _incrementCounterPlant,
                    child: Image.asset(
                      'assets/images/jana/plant.png',
                      height: 200,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                _isDarkMode
                                    ? const Color(0xFFEEEEEE)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0x9BF2F2F2)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xE1FFFFFF)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xFFECECEC)
                                    : const Color(0xFF373737),
                              ],
                            ),
                          ),
                          child: Text(
                            '$_counterPlant',
                            style: const TextStyle(
                              fontSize: 50,
                              color: Color(0xFF319B78),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Ink(
                              decoration: const ShapeDecoration(
                                color: Color(0x80D1BFA9),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.refresh),
                                color: _isDarkMode
                                    ? const Color(0xFF949494)
                                    : const Color(0xFF8A8A8A),
                                onPressed: _resetCounterPlant,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    var janaHome = Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
              style: TextStyle(
                fontFamily: 'dinnextregular',
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              ' قال رسول الله ﷺ'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
              style: TextStyle(
                fontFamily: 'dinnextregular',
                fontWeight: FontWeight.bold,
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFEBEBEB),
              ),
              'من صلى في اليوم والليلة ، ثنتي عشرة ركعة بُنِيَ له بيت في الجنةِ'),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF3B3B3B),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF3F3F3)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFFFFFFF)
                            : const Color(0xFF303030),
                        _isDarkMode
                            ? const Color(0xFFF7F7F7)
                            : const Color(0xFF303030),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: _incrementCounterHome,
                    child: Image.asset(
                      'assets/images/jana/home.png',
                      height: 200,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                _isDarkMode
                                    ? const Color(0xFFEEEEEE)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0x9BF2F2F2)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xE1FFFFFF)
                                    : const Color(0xFF373737),
                                _isDarkMode
                                    ? const Color(0xFFECECEC)
                                    : const Color(0xFF373737),
                              ],
                            ),
                          ),
                          child: Text(
                            '$_counterHome',
                            style: const TextStyle(
                              fontSize: 50,
                              color: Color(0xFF319B78),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Ink(
                              decoration: const ShapeDecoration(
                                color: Color(0x80D1BFA9),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.refresh),
                                color: _isDarkMode
                                    ? const Color(0xFF949494)
                                    : const Color(0xFF8A8A8A),
                                onPressed: _resetCounterHome,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

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
          backgroundColor:
              _isDarkMode ? const Color(0xDD503A6E) : const Color(0xFF342B3F),
          title: const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'مزرعــة الآخــرة',
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
                'assets/images/jana/palm.png',
                height: 25.0,
                width: 25.0,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: _isDarkMode ? const Color(0xFFEAEAEA) : colorBgSectionsDark,
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  janaPBUH,
                  LineDivider(isDarkMode: _isDarkMode),
                  janaForgiveness,
                  LineDivider(isDarkMode: _isDarkMode),
                  janaPraise,
                  LineDivider(isDarkMode: _isDarkMode),
                  janaOne,
                  LineDivider(isDarkMode: _isDarkMode),
                  janaPlam,
                  LineDivider(isDarkMode: _isDarkMode),
                  janaTreasure,
                  LineDivider(isDarkMode: _isDarkMode),
                  janaPlant,
                  LineDivider(isDarkMode: _isDarkMode),
                  janaHome,
                  const SizedBox(height: 120)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LineDivider extends StatelessWidget {
  final bool isDarkMode;
  const LineDivider({
    super.key,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
        color: isDarkMode ? const Color(0x79DBDBDB) : colorStatusBarSeiraDark,
        thickness: 2,
        indent: 20,
        endIndent: 20,
        height: 70);
  }
}
