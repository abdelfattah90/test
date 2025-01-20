import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../utilities/utilities.dart';

class SettingsActionSheet {
  static void show(
    BuildContext context,
    bool isDarkMode,
    VoidCallback toggleTheme,
  ) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.9,
              child: CupertinoPageScaffold(
                // navigationBar: CupertinoNavigationBar(
                //   backgroundColor: isDarkMode
                //       ? colorStatusBarSeira
                //       : colorStatusBarSeiraDark,
                //   middle: const Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Row(
                //         children: [
                //           Padding(
                //             padding: EdgeInsets.only(right: 20),
                //             child: Text(
                //               'الأعدادات',
                //               style: TextStyle(
                //                 fontSize: 18,
                //                 fontFamily: 'dinnextregular',
                //                 color: Color(0xFFFCFCFC),
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                //   leading: CupertinoButton(
                //     padding: EdgeInsets.zero,
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     child: const Icon(
                //       CupertinoIcons.clear,
                //       size: 28.0,
                //       color: Color(0xFFFCFCFC),
                //     ),
                //   ),
                // ),
                child: Scaffold(
                  body: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    // padding: const EdgeInsetsDirectional.all(0),
                    color: isDarkMode ? colorBgSections : colorBgSectionsDark,
                    child: SingleChildScrollView(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    isDarkMode
                                        ? 'الوضع الليلى'
                                        : 'الوضع التلقائى',
                                    style: TextStyle(
                                      fontFamily: 'dinnextregular',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      color: isDarkMode
                                          ? colorBgSectionsDark
                                          : colorBgSections,
                                      // color: ,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      toggleTheme();
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(130, 40),
                                      foregroundColor: Colors.white,
                                      backgroundColor: isDarkMode
                                          ? colorStatusBarSeira
                                          : colorParagraphTitleCompanion,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'تفعيل',
                                            style: TextStyle(
                                              fontFamily: 'dinnextregular',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: colorBgSections,
                                              // color: ,
                                            ),
                                          ),
                                        ),
                                        isDarkMode
                                            ? Image.asset(
                                                'assets/images/moon.png',
                                                width: 20,
                                                height: 20,
                                              )
                                            : Image.asset(
                                                'assets/images/sun.png',
                                                width: 20,
                                                height: 20,
                                              )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                                color: isDarkMode
                                    ? const Color(0x79DBDBDB)
                                    : colorStatusBarSeiraDark,
                                thickness: 2,
                                indent: 20,
                                endIndent: 20,
                                height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, 'font-setting');
                                    },
                                    child: Container(
                                      margin:
                                          const EdgeInsetsDirectional.symmetric(
                                              vertical: 10, horizontal: 10),
                                      padding:
                                          const EdgeInsetsDirectional.symmetric(
                                              vertical: 10, horizontal: 10),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                        color: Color(0x57E0E0E0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'ضبط الخط',
                                            style: TextStyle(
                                              fontFamily: 'dinnextregular',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: isDarkMode
                                                  ? colorBgSectionsDark
                                                  : colorBgSections,
                                              // color: ,
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/images/arabic-language.png',
                                            height: 25,
                                            width: 25,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, 'info');
                                    },
                                    child: Container(
                                      margin:
                                          const EdgeInsetsDirectional.symmetric(
                                              vertical: 10, horizontal: 10),
                                      padding:
                                          const EdgeInsetsDirectional.symmetric(
                                              vertical: 10, horizontal: 10),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                        color: Color(0x57E0E0E0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'عن التطبيق',
                                            style: TextStyle(
                                              fontFamily: 'dinnextregular',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: isDarkMode
                                                  ? colorBgSectionsDark
                                                  : colorBgSections,
                                              // color: ,
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/images/digital-library.png',
                                            height: 25,
                                            width: 25,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
