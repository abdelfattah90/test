import 'package:flutter/material.dart';

import '../utilities/utilities.dart';

import 'home_routes/route_seira.dart';
import 'home_routes/route_masjid_nabawi.dart';
import 'home_routes/route_rashiduns.dart';
import 'home_routes/route_radio.dart';
import 'home_routes/route_azkar_evening.dart';
import 'home_routes/route_azkar_moring.dart';
import 'home_routes/route_dua.dart';
import 'home_routes/route_jana.dart';
import 'home_routes/route_ramadan.dart';
import 'home_routes/settings_action_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  toggleTheme() async {
    bool newMode = !_isDarkMode;
    await ThemePreferences.setDarkMode(newMode);
    setState(() {
      _isDarkMode = newMode;
    });
  }

  void _showSettingsActionSheet(BuildContext context) {
    SettingsActionSheet.show(context, _isDarkMode, toggleTheme);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/ramadan/ramadan-kareem.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            ),
            Positioned(
              bottom: 5,
              left: 5,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showSettingsActionSheet(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 5, right: 5),
                      child: Image.asset(
                        'assets/images/setting.png',
                        width: 27,
                        height: 27,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'hijri-calendar');
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 5),
                      child: Image.asset(
                        'assets/images/calendar.png',
                        width: 27,
                        height: 27,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color:
              _isDarkMode ? const Color(0xFFEDEDED) : const Color(0xFF1B1B1B),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
            child: Column(children: [
              const SizedBox(height: 15),
              RouteRamadan(isDarkMode: _isDarkMode),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: RouteRashiduns(isDarkMode: _isDarkMode),
                  ),
                  Expanded(
                    flex: 1,
                    child: RouteSeira(isDarkMode: _isDarkMode),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: RouteMasjidNabawi(isDarkMode: _isDarkMode),
                  ),
                  Expanded(
                    flex: 1,
                    child: RouteRadio(isDarkMode: _isDarkMode),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: RouteJana(isDarkMode: _isDarkMode),
                  ),
                  Expanded(
                    flex: 1,
                    child: RouteDua(isDarkMode: _isDarkMode),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: RouteAzkarEvening(isDarkMode: _isDarkMode),
                  ),
                  Expanded(
                    flex: 1,
                    child: RouteAzkarMorning(isDarkMode: _isDarkMode),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ]),
          ),
        ),
      ),
    );
  }
}
