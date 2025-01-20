import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';
import 'routes/route_provision1.dart';
import 'routes/route_provision2.dart';
import 'routes/route_provision3.dart';
import 'routes/route_provision4.dart';
import 'routes/route_provision5.dart';
import 'routes/route_provision6.dart';
import 'routes/route_provision7.dart';
import 'routes/route_provision8.dart';
import 'routes/route_provision9.dart';
import 'routes/route_provision10.dart';
import 'routes/route_provision11.dart';
import 'routes/route_provision12.dart';
import 'routes/route_provision13.dart';
import 'routes/route_provision14.dart';

class FastingProvisions extends StatefulWidget {
  const FastingProvisions({super.key});

  @override
  State<FastingProvisions> createState() => _FastingProvisionsState();
}

class _FastingProvisionsState extends State<FastingProvisions> {
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
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          leading: BackButton(
            color: const Color(0xFFFFFFFF),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: _isDarkMode
              ? colorStatusBarRashiduns
              : colorStatusBarRashidunsDark,
          title: const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'من أحكــام الصيــام',
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
                'assets/images/ramadan/ramadan2.png',
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
        decoration: BoxDecoration(
          color:
              _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF1B1B1B),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsetsDirectional.all(30),
            child: Column(
              children: [
                RouteProvision1(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision2(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision3(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision4(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision5(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision6(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision7(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision8(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision9(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision10(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision11(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision12(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision13(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
                RouteProvision14(isDarkMode: _isDarkMode),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
