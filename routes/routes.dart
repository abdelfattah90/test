import '../home/home.dart';

import '../rashiduns/rashiduns_home.dart';
import '../radio/radio.dart';
import '../radio/radio_atheer.dart';
import '../radio/mp3quran.dart';
import '../masjid_nabawi/masjid_nabawi.dart';
import '../azkar/azkar_evening.dart';
import '../azkar/azkar_morning.dart';
import '../azkar/jana.dart';
import '../dua/dua.dart';
import '../dua/dua_prayers.dart';
import '../dua/dua_sad.dart';
import '../dua/dua_quran.dart';
import '../dua/dua_book.dart';
import '../settings/font_setting.dart';
import '../info/info.dart';
import '../calendar/hijri_calendar.dart';
// Ramadan
import '../ramadan/ramadan_screen.dart';
import '../ramadan/ramadan_book1.dart';
import '../ramadan/ramadan_book2.dart';
import '../ramadan/ramadan_book3.dart';
import '../ramadan/fasting_provisions/fasting_provisions.dart';
import '../ramadan/fasting_provisions/provisions1.dart';
import '../ramadan/fasting_provisions/provisions2.dart';
import '../ramadan/fasting_provisions/provisions3.dart';
import '../ramadan/fasting_provisions/provisions4.dart';
import '../ramadan/fasting_provisions/provisions5.dart';
import '../ramadan/fasting_provisions/provisions6.dart';
import '../ramadan/fasting_provisions/provisions7.dart';
import '../ramadan/fasting_provisions/provisions8.dart';
import '../ramadan/fasting_provisions/provisions9.dart';
import '../ramadan/fasting_provisions/provisions10.dart';
import '../ramadan/fasting_provisions/provisions11.dart';
import '../ramadan/fasting_provisions/provisions12.dart';
import '../ramadan/fasting_provisions/provisions13.dart';
import '../ramadan/fasting_provisions/provisions14.dart';

import '../seira/seira_home.dart';
import '../seira/sections/section1.dart';
import '../seira/sections/section2.dart';
import '../seira/sections/section3.dart';
import '../seira/sections/section4.dart';
import '../seira/sections/section5.dart';
import '../seira/sections/section6.dart';
import '../seira/sections/section7.dart';
import '../seira/sections/section8.dart';
import '../seira/sections/section9.dart';
import '../seira/sections/section10.dart';
import '../seira/sections/section11.dart';
import '../seira/sections/section12.dart';
import '../seira/sections/section13.dart';
import '../seira/sections/section14.dart';
import '../seira/sections/section15.dart';
import '../seira/sections/section16.dart';
import '../seira/sections/section17.dart';
import '../seira/sections/section18.dart';
import '../seira/sections/section19.dart';
import '../seira/sections/section20.dart';
import '../seira/sections/section21.dart';
import '../seira/sections/section22.dart';
import '../seira/sections/section23.dart';
import '../seira/sections/section24.dart';
import '../seira/sections/section25.dart';
import '../seira/sections/section26.dart';
import '../seira/sections/section27.dart';
import '../seira/sections/section28.dart';
import '../seira/sections/section29.dart';
import '../seira/sections/section30.dart';
import '../seira/sections/section31.dart';
import '../seira/sections/section32.dart';
import '../seira/sections/section33.dart';
import '../seira/sections/section34.dart';
import '../seira/sections/section35.dart';
import '../seira/sections/section36.dart';
import '../seira/sections/section37.dart';
import '../seira/sections/section38.dart';
import '../seira/sections/section39.dart';
import '../seira/sections/section40.dart';
import '../seira/sections/section41.dart';
import '../seira/sections/section42.dart';
import '../seira/sections/section43.dart';
import '../seira/sections/section44.dart';
import '../seira/sections/section45.dart';
import '../seira/sections/section46.dart';
import '../seira/sections/section47.dart';
import '../seira/sections/section48.dart';
import '../seira/sections/section49.dart';
import '../seira/sections/section50.dart';
import '../seira/sections/section51.dart';
import '../seira/sections/section52.dart';
import '../seira/sections/section53.dart';
import '../seira/sections/section54.dart';
import '../seira/sections/section55.dart';
import '../seira/sections/section56.dart';
import '../seira/sections/section57.dart';
import '../seira/sections/section58.dart';
import '../seira/sections/section59.dart';
import '../seira/sections/section60.dart';
import '../seira/sections/section61.dart';
import '../seira/sections/section62.dart';
import '../seira/sections/section63.dart';
import '../seira/sections/section64.dart';
import '../seira/sections/section65.dart';
import '../seira/sections/section66.dart';
import '../seira/sections/section67.dart';
import '../seira/sections/section68.dart';
import '../seira/sections/section69.dart';
import '../seira/sections/section70.dart';
import '../seira/sections/section71.dart';
import '../seira/sections/section72.dart';
import '../seira/sections/section73.dart';
import '../seira/sections/section74.dart';
import '../seira/sections/section75.dart';
import '../seira/sections/section76.dart';
import '../seira/sections/section77.dart';
import '../seira/sections/section78.dart';
import '../seira/sections/section79.dart';
import '../seira/sections/section80.dart';

import '../rashiduns/sections/companion1.dart';
import '../rashiduns/sections/companion1sub1.dart';
import '../rashiduns/sections/companion1sub2.dart';
import '../rashiduns/sections/companion2.dart';
import '../rashiduns/sections/companion2sub1.dart';
import '../rashiduns/sections/companion2sub2.dart';
import '../rashiduns/sections/companion3.dart';
import '../rashiduns/sections/companion3sub1.dart';
import '../rashiduns/sections/companion3sub2.dart';
import '../rashiduns/sections/companion3sub3.dart';
import '../rashiduns/sections/companion4.dart';
import '../rashiduns/sections/companion4sub1.dart';
import '../rashiduns/sections/companion4sub2.dart';
import '../rashiduns/sections/companion4sub3.dart';
import '../rashiduns/sections/companion4sub4.dart';
import '../rashiduns/sections/companion4sub5.dart';
import '../rashiduns/sections/companion4sub6.dart';
import '../rashiduns/sections/companion4sub7.dart';

// import 'companions/companions_home.dart';
// import 'companions/sections/companion5.dart';

final routesList = {
  '/': (context) => const HomeScreen(),
  'seira-home': (context) => const SeiraHome(),
  'masjid-nabawi': (context) => const MasjidNabawi(),
  'rashiduns': (context) => const Rashiduns(),
  'radio': (context) => const RadioList(),
  'mp3quran': (context) => const Mp3Quran(),
  'radio-atheer': (context) => const RadioAtheer(),
  'font-setting': (context) => const FontSettingScreen(),
  'info': (context) => const InfoScreen(),
  'hijri-calendar': (context) => const HijriCalendarScreen(),
  'azkar-evening': (context) => const AzkarEvening(),
  'azkar-morning': (context) => const AzkarMorning(),
  'jana': (context) => const Jana(),

  'dua': (context) => const DuaScreen(),
  'dua-sad': (context) => const DuaSad(),
  'dua-prayers': (context) => const DuaPrayers(),
  'dua-book': (context) => const DuaBook(),
  'dua-quran': (context) => const DuaQuran(),

  // Ramadan
  'ramadan': (context) => const RamadanScreen(),
  'ramadan-book1': (context) => const RamadanBook1(),
  'ramadan-book2': (context) => const RamadanBook2(),
  'ramadan-book3': (context) => const RamadanBook3(),
  'fasting-provisions': (context) => const FastingProvisions(),
  'provision1': (context) => const Provision1(),
  'provision2': (context) => const Provision2(),
  'provision3': (context) => const Provision3(),
  'provision4': (context) => const Provision4(),
  'provision5': (context) => const Provision5(),
  'provision6': (context) => const Provision6(),
  'provision7': (context) => const Provision7(),
  'provision8': (context) => const Provision8(),
  'provision9': (context) => const Provision9(),
  'provision10': (context) => const Provision10(),
  'provision11': (context) => const Provision11(),
  'provision12': (context) => const Provision12(),
  'provision13': (context) => const Provision13(),
  'provision14': (context) => const Provision14(),

  'section1': (context) => const Section1(),
  'section2': (context) => const Section2(),
  'section3': (context) => const Section3(),
  'section4': (context) => const Section4(),
  'section5': (context) => const Section5(),
  'section6': (context) => const Section6(),
  'section7': (context) => const Section7(),
  'section8': (context) => const Section8(),
  'section9': (context) => const Section9(),
  'section10': (context) => const Section10(),
  'section11': (context) => const Section11(),
  'section12': (context) => const Section12(),
  'section13': (context) => const Section13(),
  'section14': (context) => const Section14(),
  'section15': (context) => const Section15(),
  'section16': (context) => const Section16(),
  'section17': (context) => const Section17(),
  'section18': (context) => const Section18(),
  'section19': (context) => const Section19(),
  'section20': (context) => const Section20(),
  'section21': (context) => const Section21(),
  'section22': (context) => const Section22(),
  'section23': (context) => const Section23(),
  'section24': (context) => const Section24(),
  'section25': (context) => const Section25(),
  'section26': (context) => const Section26(),
  'section27': (context) => const Section27(),
  'section28': (context) => const Section28(),
  'section29': (context) => const Section29(),
  'section30': (context) => const Section30(),
  'section31': (context) => const Section31(),
  'section32': (context) => const Section32(),
  'section33': (context) => const Section33(),
  'section34': (context) => const Section34(),
  'section35': (context) => const Section35(),
  'section36': (context) => const Section36(),
  'section37': (context) => const Section37(),
  'section38': (context) => const Section38(),
  'section39': (context) => const Section39(),
  'section40': (context) => const Section40(),
  'section41': (context) => const Section41(),
  'section42': (context) => const Section42(),
  'section43': (context) => const Section43(),
  'section44': (context) => const Section44(),
  'section45': (context) => const Section45(),
  'section46': (context) => const Section46(),
  'section47': (context) => const Section47(),
  'section48': (context) => const Section48(),
  'section49': (context) => const Section49(),
  'section50': (context) => const Section50(),
  'section51': (context) => const Section51(),
  'section52': (context) => const Section52(),
  'section53': (context) => const Section53(),
  'section54': (context) => const Section54(),
  'section55': (context) => const Section55(),
  'section56': (context) => const Section56(),
  'section57': (context) => const Section57(),
  'section58': (context) => const Section58(),
  'section59': (context) => const Section59(),
  'section60': (context) => const Section60(),
  'section61': (context) => const Section61(),
  'section62': (context) => const Section62(),
  'section63': (context) => const Section63(),
  'section64': (context) => const Section64(),
  'section65': (context) => const Section65(),
  'section66': (context) => const Section66(),
  'section67': (context) => const Section67(),
  'section68': (context) => const Section68(),
  'section69': (context) => const Section69(),
  'section70': (context) => const Section70(),
  'section71': (context) => const Section71(),
  'section72': (context) => const Section72(),
  'section73': (context) => const Section73(),
  'section74': (context) => const Section74(),
  'section75': (context) => const Section75(),
  'section76': (context) => const Section76(),
  'section77': (context) => const Section77(),
  'section78': (context) => const Section78(),
  'section79': (context) => const Section79(),
  'section80': (context) => const Section80(),

  'companion1': (context) => const Companion1(),
  'companion1sub1': (context) => const Companion1sub1(),
  'companion1sub2': (context) => const Companion1sub2(),
  'companion2': (context) => const Companion2(),
  'companion2sub1': (context) => const Companion2sub1(),
  'companion2sub2': (context) => const Companion2sub2(),
  'companion3': (context) => const Companion3(),
  'companion3sub1': (context) => const Companion3sub1(),
  'companion3sub2': (context) => const Companion3sub2(),
  'companion3sub3': (context) => const Companion3sub3(),
  'companion4': (context) => const Companion4(),
  'companion4sub1': (context) => const Companion4sub1(),
  'companion4sub2': (context) => const Companion4sub2(),
  'companion4sub3': (context) => const Companion4sub3(),
  'companion4sub4': (context) => const Companion4sub4(),
  'companion4sub5': (context) => const Companion4sub5(),
  'companion4sub6': (context) => const Companion4sub6(),
  'companion4sub7': (context) => const Companion4sub7(),
  // 'companion5': (context) => const Companion5(),
};
