import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utilities/utilities.dart';
import 'days/action_sheet_day1.dart';
import 'days/action_sheet_day2.dart';
import 'days/action_sheet_day3.dart';
import 'days/action_sheet_day4.dart';
import 'days/action_sheet_day5.dart';
import 'days/action_sheet_day6.dart';
import 'days/action_sheet_day7.dart';
import 'days/action_sheet_day8.dart';
import 'days/action_sheet_day9.dart';
import 'days/action_sheet_day10.dart';
import 'days/action_sheet_day11.dart';
import 'days/action_sheet_day12.dart';
import 'days/action_sheet_day13.dart';
import 'days/action_sheet_day14.dart';
import 'days/action_sheet_day15.dart';
import 'days/action_sheet_day16.dart';
import 'days/action_sheet_day17.dart';
import 'days/action_sheet_day18.dart';
import 'days/action_sheet_day19.dart';
import 'days/action_sheet_day20.dart';
import 'days/action_sheet_day21.dart';
import 'days/action_sheet_day22.dart';
import 'days/action_sheet_day23.dart';
import 'days/action_sheet_day24.dart';
import 'days/action_sheet_day25.dart';
import 'days/action_sheet_day26.dart';
import 'days/action_sheet_day27.dart';
import 'days/action_sheet_day28.dart';
import 'days/action_sheet_day29.dart';
import 'days/action_sheet_day30.dart';
import 'routes/route_fasting_provisions.dart';
import 'routes/route_ramadan_book1.dart';
import 'routes/route_ramadan_book2.dart';
import 'routes/route_ramadan_book3.dart';

class RamadanScreen extends StatefulWidget {
  const RamadanScreen({super.key});

  @override
  State<RamadanScreen> createState() => _RamadanScreenState();
}

class _RamadanScreenState extends State<RamadanScreen> {
  bool _isDarkMode = false;
  String day1 = 'ramadan1_1445';
  String day2 = 'ramadan2_1445';
  String day3 = 'ramadan3_1445';
  String day4 = 'ramadan4_1445';
  String day5 = 'ramadan5_1445';
  String day6 = 'ramadan6_1445';
  String day7 = 'ramadan7_1445';
  String day8 = 'ramadan8_1445';
  String day9 = 'ramadan9_1445';
  String day10 = 'ramadan10_1445';
  String day11 = 'ramadan11_1445';
  String day12 = 'ramadan12_1445';
  String day13 = 'ramadan13_1445';
  String day14 = 'ramadan14_1445';
  String day15 = 'ramadan15_1445';
  String day16 = 'ramadan16_1445';
  String day17 = 'ramadan17_1445';
  String day18 = 'ramadan18_1445';
  String day19 = 'ramadan19_1445';
  String day20 = 'ramadan20_1445';
  String day21 = 'ramadan21_1445';
  String day22 = 'ramadan22_1445';
  String day23 = 'ramadan23_1445';
  String day24 = 'ramadan24_1445';
  String day25 = 'ramadan25_1445';
  String day26 = 'ramadan26_1445';
  String day27 = 'ramadan27_1445';
  String day28 = 'ramadan28_1445';
  String day29 = 'ramadan29_1445';
  String day30 = 'ramadan30_1445';

  bool _isCheckedDay1 = false;
  bool _isCheckedDay2 = false;
  bool _isCheckedDay3 = false;
  bool _isCheckedDay4 = false;
  bool _isCheckedDay5 = false;
  bool _isCheckedDay6 = false;
  bool _isCheckedDay7 = false;
  bool _isCheckedDay8 = false;
  bool _isCheckedDay9 = false;
  bool _isCheckedDay10 = false;
  bool _isCheckedDay11 = false;
  bool _isCheckedDay12 = false;
  bool _isCheckedDay13 = false;
  bool _isCheckedDay14 = false;
  bool _isCheckedDay15 = false;
  bool _isCheckedDay16 = false;
  bool _isCheckedDay17 = false;
  bool _isCheckedDay18 = false;
  bool _isCheckedDay19 = false;
  bool _isCheckedDay20 = false;
  bool _isCheckedDay21 = false;
  bool _isCheckedDay22 = false;
  bool _isCheckedDay23 = false;
  bool _isCheckedDay24 = false;
  bool _isCheckedDay25 = false;
  bool _isCheckedDay26 = false;
  bool _isCheckedDay27 = false;
  bool _isCheckedDay28 = false;
  bool _isCheckedDay29 = false;
  bool _isCheckedDay30 = false;

  @override
  void initState() {
    super.initState();
    loadTheme();
    loadCheckDay1();
    loadCheckDay2();
    loadCheckDay3();
    loadCheckDay4();
    loadCheckDay5();
    loadCheckDay6();
    loadCheckDay7();
    loadCheckDay8();
    loadCheckDay9();
    loadCheckDay10();
    loadCheckDay11();
    loadCheckDay12();
    loadCheckDay13();
    loadCheckDay14();
    loadCheckDay15();
    loadCheckDay16();
    loadCheckDay17();
    loadCheckDay18();
    loadCheckDay19();
    loadCheckDay20();
    loadCheckDay21();
    loadCheckDay22();
    loadCheckDay23();
    loadCheckDay24();
    loadCheckDay25();
    loadCheckDay26();
    loadCheckDay27();
    loadCheckDay28();
    loadCheckDay29();
    loadCheckDay30();
  }

  loadTheme() async {
    bool isDarkMode = await ThemePreferences.isDarkMode();
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  // ---------------------------------------------------------------- Start Day 1

  void loadCheckDay1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay1 = prefs.getBool(day1) ?? false;
    });
  }

  toggleCheckDay1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay1 = !_isCheckedDay1;
    prefs.setBool(day1, newCheckedDay1);
    setState(() {
      _isCheckedDay1 = newCheckedDay1;
    });
  }

  void _showActionSheetDay1(BuildContext context) {
    ActionSheetDay1.show(context, _isDarkMode, _isCheckedDay1, toggleCheckDay1);
  }

  // ---------------------------------------------------------------- End Day 1

  // ---------------------------------------------------------------- Start Day 2

  void loadCheckDay2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay2 = prefs.getBool(day2) ?? false;
    });
  }

  toggleCheckDay2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay2 = !_isCheckedDay2;
    prefs.setBool(day2, newCheckedDay2);
    setState(() {
      _isCheckedDay2 = newCheckedDay2;
    });
  }

  void _showActionSheetDay2(BuildContext context) {
    ActionSheetDay2.show(context, _isDarkMode, _isCheckedDay2, toggleCheckDay2);
  }

  // ---------------------------------------------------------------- End Day 2

  // ---------------------------------------------------------------- Start Day 3

  void loadCheckDay3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay3 = prefs.getBool(day3) ?? false;
    });
  }

  toggleCheckDay3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay3 = !_isCheckedDay3;
    prefs.setBool(day3, newCheckedDay3);
    setState(() {
      _isCheckedDay3 = newCheckedDay3;
    });
  }

  void _showActionSheetDay3(BuildContext context) {
    ActionSheetDay3.show(context, _isDarkMode, _isCheckedDay3, toggleCheckDay3);
  }

  // ---------------------------------------------------------------- End Day 3

  // ---------------------------------------------------------------- Start Day 4

  void loadCheckDay4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay4 = prefs.getBool(day4) ?? false;
    });
  }

  toggleCheckDay4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay4 = !_isCheckedDay4;
    prefs.setBool(day4, newCheckedDay4);
    setState(() {
      _isCheckedDay4 = newCheckedDay4;
    });
  }

  void _showActionSheetDay4(BuildContext context) {
    ActionSheetDay4.show(context, _isDarkMode, _isCheckedDay4, toggleCheckDay4);
  }

  // ---------------------------------------------------------------- End Day 4

  // ---------------------------------------------------------------- Start Day 5

  void loadCheckDay5() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay5 = prefs.getBool(day5) ?? false;
    });
  }

  toggleCheckDay5() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay5 = !_isCheckedDay5;
    prefs.setBool(day5, newCheckedDay5);
    setState(() {
      _isCheckedDay5 = newCheckedDay5;
    });
  }

  void _showActionSheetDay5(BuildContext context) {
    ActionSheetDay5.show(context, _isDarkMode, _isCheckedDay5, toggleCheckDay5);
  }

  // ---------------------------------------------------------------- End Day 5

  // ---------------------------------------------------------------- Start Day 6

  void loadCheckDay6() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay6 = prefs.getBool(day6) ?? false;
    });
  }

  toggleCheckDay6() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay6 = !_isCheckedDay6;
    prefs.setBool(day6, newCheckedDay6);
    setState(() {
      _isCheckedDay6 = newCheckedDay6;
    });
  }

  void _showActionSheetDay6(BuildContext context) {
    ActionSheetDay6.show(context, _isDarkMode, _isCheckedDay6, toggleCheckDay6);
  }

  // ---------------------------------------------------------------- End Day 6

  // ---------------------------------------------------------------- Start Day 7

  void loadCheckDay7() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay7 = prefs.getBool(day7) ?? false;
    });
  }

  toggleCheckDay7() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay7 = !_isCheckedDay7;
    prefs.setBool(day7, newCheckedDay7);
    setState(() {
      _isCheckedDay7 = newCheckedDay7;
    });
  }

  void _showActionSheetDay7(BuildContext context) {
    ActionSheetDay7.show(context, _isDarkMode, _isCheckedDay7, toggleCheckDay7);
  }

  // ---------------------------------------------------------------- End Day 7

  // ---------------------------------------------------------------- Start Day 8

  void loadCheckDay8() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay8 = prefs.getBool(day8) ?? false;
    });
  }

  toggleCheckDay8() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay8 = !_isCheckedDay8;
    prefs.setBool(day8, newCheckedDay8);
    setState(() {
      _isCheckedDay8 = newCheckedDay8;
    });
  }

  void _showActionSheetDay8(BuildContext context) {
    ActionSheetDay8.show(context, _isDarkMode, _isCheckedDay8, toggleCheckDay8);
  }

  // ---------------------------------------------------------------- End Day 8

  // ---------------------------------------------------------------- Start Day 9

  void loadCheckDay9() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay9 = prefs.getBool(day9) ?? false;
    });
  }

  toggleCheckDay9() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay9 = !_isCheckedDay9;
    prefs.setBool(day9, newCheckedDay9);
    setState(() {
      _isCheckedDay9 = newCheckedDay9;
    });
  }

  void _showActionSheetDay9(BuildContext context) {
    ActionSheetDay9.show(context, _isDarkMode, _isCheckedDay9, toggleCheckDay9);
  }

  // ---------------------------------------------------------------- End Day 9

  // ---------------------------------------------------------------- Start Day 10

  void loadCheckDay10() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay10 = prefs.getBool(day10) ?? false;
    });
  }

  toggleCheckDay10() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay10 = !_isCheckedDay10;
    prefs.setBool(day10, newCheckedDay10);
    setState(() {
      _isCheckedDay10 = newCheckedDay10;
    });
  }

  void _showActionSheetDay10(BuildContext context) {
    ActionSheetDay10.show(
        context, _isDarkMode, _isCheckedDay10, toggleCheckDay10);
  }

  // ---------------------------------------------------------------- End Day 10

  // ---------------------------------------------------------------- Start Day 11

  void loadCheckDay11() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay11 = prefs.getBool(day11) ?? false;
    });
  }

  toggleCheckDay11() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay11 = !_isCheckedDay11;
    prefs.setBool(day11, newCheckedDay11);
    setState(() {
      _isCheckedDay11 = newCheckedDay11;
    });
  }

  void _showActionSheetDay11(BuildContext context) {
    ActionSheetDay11.show(
        context, _isDarkMode, _isCheckedDay11, toggleCheckDay11);
  }

  // ---------------------------------------------------------------- End Day 11

  // ---------------------------------------------------------------- Start Day 12

  void loadCheckDay12() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay12 = prefs.getBool(day12) ?? false;
    });
  }

  toggleCheckDay12() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay12 = !_isCheckedDay12;
    prefs.setBool(day12, newCheckedDay12);
    setState(() {
      _isCheckedDay12 = newCheckedDay12;
    });
  }

  void _showActionSheetDay12(BuildContext context) {
    ActionSheetDay12.show(
        context, _isDarkMode, _isCheckedDay12, toggleCheckDay12);
  }

  // ---------------------------------------------------------------- End Day 12

  // ---------------------------------------------------------------- Start Day 13

  void loadCheckDay13() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay13 = prefs.getBool(day13) ?? false;
    });
  }

  toggleCheckDay13() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay13 = !_isCheckedDay13;
    prefs.setBool(day13, newCheckedDay13);
    setState(() {
      _isCheckedDay13 = newCheckedDay13;
    });
  }

  void _showActionSheetDay13(BuildContext context) {
    ActionSheetDay13.show(
        context, _isDarkMode, _isCheckedDay13, toggleCheckDay13);
  }

  // ---------------------------------------------------------------- End Day 13

  // ---------------------------------------------------------------- Start Day 14

  void loadCheckDay14() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay14 = prefs.getBool(day14) ?? false;
    });
  }

  toggleCheckDay14() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay14 = !_isCheckedDay14;
    prefs.setBool(day14, newCheckedDay14);
    setState(() {
      _isCheckedDay14 = newCheckedDay14;
    });
  }

  void _showActionSheetDay14(BuildContext context) {
    ActionSheetDay14.show(
        context, _isDarkMode, _isCheckedDay14, toggleCheckDay14);
  }

  // ---------------------------------------------------------------- End Day 14

  // ---------------------------------------------------------------- Start Day 15

  void loadCheckDay15() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay15 = prefs.getBool(day15) ?? false;
    });
  }

  toggleCheckDay15() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay15 = !_isCheckedDay15;
    prefs.setBool(day15, newCheckedDay15);
    setState(() {
      _isCheckedDay15 = newCheckedDay15;
    });
  }

  void _showActionSheetDay15(BuildContext context) {
    ActionSheetDay15.show(
        context, _isDarkMode, _isCheckedDay15, toggleCheckDay15);
  }

  // ---------------------------------------------------------------- End Day 15

  // ---------------------------------------------------------------- Start Day 16

  void loadCheckDay16() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay16 = prefs.getBool(day16) ?? false;
    });
  }

  toggleCheckDay16() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay16 = !_isCheckedDay16;
    prefs.setBool(day16, newCheckedDay16);
    setState(() {
      _isCheckedDay16 = newCheckedDay16;
    });
  }

  void _showActionSheetDay16(BuildContext context) {
    ActionSheetDay16.show(
        context, _isDarkMode, _isCheckedDay16, toggleCheckDay16);
  }

  // ---------------------------------------------------------------- End Day 16

  // ---------------------------------------------------------------- Start Day 17

  void loadCheckDay17() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay17 = prefs.getBool(day17) ?? false;
    });
  }

  toggleCheckDay17() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay17 = !_isCheckedDay17;
    prefs.setBool(day17, newCheckedDay17);
    setState(() {
      _isCheckedDay17 = newCheckedDay17;
    });
  }

  void _showActionSheetDay17(BuildContext context) {
    ActionSheetDay17.show(
        context, _isDarkMode, _isCheckedDay17, toggleCheckDay17);
  }

  // ---------------------------------------------------------------- End Day 17

  // ---------------------------------------------------------------- Start Day 18

  void loadCheckDay18() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay18 = prefs.getBool(day18) ?? false;
    });
  }

  toggleCheckDay18() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay18 = !_isCheckedDay18;
    prefs.setBool(day18, newCheckedDay18);
    setState(() {
      _isCheckedDay18 = newCheckedDay18;
    });
  }

  void _showActionSheetDay18(BuildContext context) {
    ActionSheetDay18.show(
        context, _isDarkMode, _isCheckedDay18, toggleCheckDay18);
  }

  // ---------------------------------------------------------------- End Day 18

  // ---------------------------------------------------------------- Start Day 19

  void loadCheckDay19() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay19 = prefs.getBool(day19) ?? false;
    });
  }

  toggleCheckDay19() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay19 = !_isCheckedDay19;
    prefs.setBool(day19, newCheckedDay19);
    setState(() {
      _isCheckedDay19 = newCheckedDay19;
    });
  }

  void _showActionSheetDay19(BuildContext context) {
    ActionSheetDay19.show(
        context, _isDarkMode, _isCheckedDay19, toggleCheckDay19);
  }

  // ---------------------------------------------------------------- End Day 19

  // ---------------------------------------------------------------- Start Day 20

  void loadCheckDay20() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay20 = prefs.getBool(day20) ?? false;
    });
  }

  toggleCheckDay20() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay20 = !_isCheckedDay20;
    prefs.setBool(day20, newCheckedDay20);
    setState(() {
      _isCheckedDay20 = newCheckedDay20;
    });
  }

  void _showActionSheetDay20(BuildContext context) {
    ActionSheetDay20.show(
        context, _isDarkMode, _isCheckedDay20, toggleCheckDay20);
  }

  // ---------------------------------------------------------------- End Day 20

  // ---------------------------------------------------------------- Start Day 21

  void loadCheckDay21() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay21 = prefs.getBool(day21) ?? false;
    });
  }

  toggleCheckDay21() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay21 = !_isCheckedDay21;
    prefs.setBool(day21, newCheckedDay21);
    setState(() {
      _isCheckedDay21 = newCheckedDay21;
    });
  }

  void _showActionSheetDay21(BuildContext context) {
    ActionSheetDay21.show(
        context, _isDarkMode, _isCheckedDay21, toggleCheckDay21);
  }

  // ---------------------------------------------------------------- End Day 21

  // ---------------------------------------------------------------- Start Day 22

  void loadCheckDay22() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay22 = prefs.getBool(day22) ?? false;
    });
  }

  toggleCheckDay22() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay22 = !_isCheckedDay22;
    prefs.setBool(day22, newCheckedDay22);
    setState(() {
      _isCheckedDay22 = newCheckedDay22;
    });
  }

  void _showActionSheetDay22(BuildContext context) {
    ActionSheetDay22.show(
        context, _isDarkMode, _isCheckedDay22, toggleCheckDay22);
  }

  // ---------------------------------------------------------------- End Day 22

  // ---------------------------------------------------------------- Start Day 23

  void loadCheckDay23() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay23 = prefs.getBool(day23) ?? false;
    });
  }

  toggleCheckDay23() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay23 = !_isCheckedDay23;
    prefs.setBool(day23, newCheckedDay23);
    setState(() {
      _isCheckedDay23 = newCheckedDay23;
    });
  }

  void _showActionSheetDay23(BuildContext context) {
    ActionSheetDay23.show(
        context, _isDarkMode, _isCheckedDay23, toggleCheckDay23);
  }

  // ---------------------------------------------------------------- End Day 23

  // ---------------------------------------------------------------- Start Day 24

  void loadCheckDay24() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay24 = prefs.getBool(day24) ?? false;
    });
  }

  toggleCheckDay24() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay24 = !_isCheckedDay24;
    prefs.setBool(day24, newCheckedDay24);
    setState(() {
      _isCheckedDay24 = newCheckedDay24;
    });
  }

  void _showActionSheetDay24(BuildContext context) {
    ActionSheetDay24.show(
        context, _isDarkMode, _isCheckedDay24, toggleCheckDay24);
  }

  // ---------------------------------------------------------------- End Day 24

  // ---------------------------------------------------------------- Start Day 25

  void loadCheckDay25() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay25 = prefs.getBool(day25) ?? false;
    });
  }

  toggleCheckDay25() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay25 = !_isCheckedDay25;
    prefs.setBool(day25, newCheckedDay25);
    setState(() {
      _isCheckedDay25 = newCheckedDay25;
    });
  }

  void _showActionSheetDay25(BuildContext context) {
    ActionSheetDay25.show(
        context, _isDarkMode, _isCheckedDay25, toggleCheckDay25);
  }

  // ---------------------------------------------------------------- End Day 25

  // ---------------------------------------------------------------- Start Day 26

  void loadCheckDay26() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay26 = prefs.getBool(day26) ?? false;
    });
  }

  toggleCheckDay26() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay26 = !_isCheckedDay26;
    prefs.setBool(day26, newCheckedDay26);
    setState(() {
      _isCheckedDay26 = newCheckedDay26;
    });
  }

  void _showActionSheetDay26(BuildContext context) {
    ActionSheetDay26.show(
        context, _isDarkMode, _isCheckedDay26, toggleCheckDay26);
  }

  // ---------------------------------------------------------------- End Day 26

  // ---------------------------------------------------------------- Start Day 27

  void loadCheckDay27() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay27 = prefs.getBool(day27) ?? false;
    });
  }

  toggleCheckDay27() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay27 = !_isCheckedDay27;
    prefs.setBool(day27, newCheckedDay27);
    setState(() {
      _isCheckedDay27 = newCheckedDay27;
    });
  }

  void _showActionSheetDay27(BuildContext context) {
    ActionSheetDay27.show(
        context, _isDarkMode, _isCheckedDay27, toggleCheckDay27);
  }

  // ---------------------------------------------------------------- End Day 27

  // ---------------------------------------------------------------- Start Day 28

  void loadCheckDay28() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay28 = prefs.getBool(day28) ?? false;
    });
  }

  toggleCheckDay28() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay28 = !_isCheckedDay28;
    prefs.setBool(day28, newCheckedDay28);
    setState(() {
      _isCheckedDay28 = newCheckedDay28;
    });
  }

  void _showActionSheetDay28(BuildContext context) {
    ActionSheetDay28.show(
        context, _isDarkMode, _isCheckedDay28, toggleCheckDay28);
  }

  // ---------------------------------------------------------------- End Day 28

  // ---------------------------------------------------------------- Start Day 29

  void loadCheckDay29() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay29 = prefs.getBool(day29) ?? false;
    });
  }

  toggleCheckDay29() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay29 = !_isCheckedDay29;
    prefs.setBool(day29, newCheckedDay29);
    setState(() {
      _isCheckedDay29 = newCheckedDay29;
    });
  }

  void _showActionSheetDay29(BuildContext context) {
    ActionSheetDay29.show(
        context, _isDarkMode, _isCheckedDay29, toggleCheckDay29);
  }

  // ---------------------------------------------------------------- End Day 29

  // ---------------------------------------------------------------- Start Day 30

  void loadCheckDay30() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isCheckedDay30 = prefs.getBool(day30) ?? false;
    });
  }

  toggleCheckDay30() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newCheckedDay30 = !_isCheckedDay30;
    prefs.setBool(day30, newCheckedDay30);
    setState(() {
      _isCheckedDay30 = newCheckedDay30;
    });
  }

  void _showActionSheetDay30(BuildContext context) {
    ActionSheetDay30.show(
        context, _isDarkMode, _isCheckedDay30, toggleCheckDay30);
  }

  // ---------------------------------------------------------------- End Day 30

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0),
        child: AppBar(
          backgroundColor: _isDarkMode
              ? colorStatusBarRashiduns
              : colorStatusBarRashidunsDark,
          automaticallyImplyLeading: false,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: _isDarkMode ? colorBgSections : colorBgSectionsDark,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
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
                          'واحــــــة رمـــضــــــــــــــــــان',
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
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: RouteFastingProvisions(isDarkMode: _isDarkMode),
                      ),
                      Expanded(
                        flex: 1,
                        child: RouteRamadanBook1(isDarkMode: _isDarkMode),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: RouteRamadanBook2(isDarkMode: _isDarkMode),
                      ),
                      Expanded(
                        flex: 1,
                        child: RouteRamadanBook3(isDarkMode: _isDarkMode),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'رمـضـان',
                        style: TextStyle(
                          fontFamily: 'Amiri',
                          fontSize: 16,
                          color: Color(0xFFB94646),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        '1445',
                        style: TextStyle(
                          fontFamily: 'swissr',
                          fontSize: 16,
                          color: Color(0xFF3C8B61),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // 1-5
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay1(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay1
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay2(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay2
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay3(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay3
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay4(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '4',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay4
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay5(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay5
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7),

                // 6-10
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay6(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '6',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay6
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay7(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '7',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay7
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay8(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '8',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay8
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay9(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '9',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay9
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay10(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '10',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay10
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                // 11-15
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay11(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '11',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay11
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay12(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '12',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay12
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay13(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '13',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay13
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay14(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '14',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay14
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay15(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '15',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay15
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7),

                // 16-20
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay16(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '16',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay16
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay17(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '17',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay17
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay18(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '18',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay18
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay19(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '19',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay19
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay20(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '20',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay20
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),

                // 21-25
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay21(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '21',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay21
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay22(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '22',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay22
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay23(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '23',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay23
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay24(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '24',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay24
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay25(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '25',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay25
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7),

                // 26-30
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay26(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '26',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay26
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay27(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '27',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay27
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay28(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '28',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay28
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay29(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '29',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay29
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _showActionSheetDay30(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEAEAEA)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFEDEDED)
                                      : colorParagraphContentDark,
                                  _isDarkMode
                                      ? const Color(0xFFFFFFFF)
                                      : colorParagraphContentDark,
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '30',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: _isDarkMode
                                        ? colorParagraphTitleCompanion
                                        : colorIndexNumCompanionwomen,
                                  ),
                                ),
                                Text(
                                  'رمضان',
                                  style: TextStyle(
                                    fontFamily: 'dinnextregular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: _isDarkMode
                                        ? colorBgSectionsDark
                                        : colorBgSections,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _isCheckedDay30
                                    ? Image.asset(
                                        'assets/images/ramadan/correct-light.png',
                                        width: 15,
                                        height: 15,
                                      )
                                    : const SizedBox(
                                        height: 15,
                                        width: 15,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/ramadan/lamp_ramadan.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
