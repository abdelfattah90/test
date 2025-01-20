import 'package:flutter/material.dart';

import '../utilities/utilities.dart';
import 'companions_list.dart';

// Companions
class Companions {
  Companions({
    required this.nums,
    required this.url,
  });

  String nums;
  String url;
}

final List<Companions> _companions = generateSections(42);

List<Companions> generateSections(int sectionsNumber) {
  return List<Companions>.generate(sectionsNumber, (int index) {
    return Companions(
      nums: '${index + 1}',
      url: 'companion${index + 5}',
    );
  });
}

class CompanionsSections extends StatefulWidget {
  const CompanionsSections({
    super.key,
  });

  @override
  State<CompanionsSections> createState() => _CompanionsSectionsState();
}

class _CompanionsSectionsState extends State<CompanionsSections> {
  // bool _isDarkMode = false;
  // @override
  // void initState() {
  //   super.initState();
  //   loadTheme();
  // }

  // loadTheme() async {
  //   bool isDarkMode = await ThemePreferences.isDarkMode();
  //   setState(() {
  //     _isDarkMode = isDarkMode;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 3,
          childAspectRatio: 2.5,
        ),
        itemCount: _companions.length,
        itemBuilder: (context, index) {
          final companionsText = companions[index];
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, _companions[index].url),
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFAFAFA),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: companionsText,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF646464),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'droid',
                        ),
                      ),
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}

// Companionswomen
class Companionswomen {
  Companionswomen({
    required this.nums,
    required this.url,
  });

  String nums;
  String url;
}

final List<Companionswomen> _companionsWomen = generateSectionsWomen(24);

List<Companionswomen> generateSectionsWomen(int sectionsNumber) {
  return List<Companionswomen>.generate(sectionsNumber, (int index) {
    return Companionswomen(
      nums: '${index + 1}',
      url: 'companionwoman${index + 1}',
    );
  });
}

class CompanionswomenSections extends StatefulWidget {
  const CompanionswomenSections({
    super.key,
  });

  @override
  State<CompanionswomenSections> createState() =>
      _CompanionswomenSectionsState();
}

class _CompanionswomenSectionsState extends State<CompanionswomenSections> {
  bool _isDarkMode = false;
  @override
  void initState() {
    super.initState();
    loadTheme();
  }

  loadTheme() async {
    bool isDarkMode = await ThemePreferences.isDarkMode();
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 2,
          childAspectRatio: 4.5,
        ),
        itemCount: _companionsWomen.length,
        itemBuilder: (context, index) {
          final companionswomenText = companionswomen[index];
          return GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, _companionsWomen[index].url),
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFAFAFA),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: _isDarkMode
                              ? colorIndexNumCompanionwomen
                              : colorIndexNumCompanionwomenDark,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(3.0),
                            bottomRight: Radius.circular(3.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            _companionsWomen[index].nums,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: companionswomenText,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF4F4F4F),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'droid',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}

// Companions Screen

class CompanionsScreen extends StatefulWidget {
  const CompanionsScreen({super.key});

  @override
  State<CompanionsScreen> createState() => _CompanionsScreenState();
}

class _CompanionsScreenState extends State<CompanionsScreen> {
  bool _isDarkMode = false;
  @override
  void initState() {
    super.initState();
    loadTheme();
  }

  loadTheme() async {
    bool isDarkMode = await ThemePreferences.isDarkMode();
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child: AppBar(
            backgroundColor: _isDarkMode
                ? colorStatusBarCompanion
                : colorStatusBarRashidunsDark,
            automaticallyImplyLeading: false),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: _isDarkMode ? colorBgSections : colorBgSectionsDark,
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            'رجــال حــول الرســول',
                            style: TextStyle(
                              fontFamily: 'swissr',
                              fontSize: 18,
                              color: _isDarkMode
                                  ? const Color(0xFF565354)
                                  : const Color(0xFFEBEBEB),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_rounded,
                              color: colorStatusBarSeira,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'الصحـابـــــة',
                          style: TextStyle(
                            fontFamily: 'swissr',
                            fontSize: 20,
                            color: Color(0xFF565354),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CompanionsSections(),
                  const SizedBox(height: 30),
                  dividerLine(),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'الصحــابيـــــــات',
                          style: TextStyle(
                            fontFamily: 'swissr',
                            fontSize: 20,
                            color: Color(0xFF565354),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CompanionswomenSections(),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
