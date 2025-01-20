import 'package:flutter/material.dart';

class RouteAzkarEvening extends StatelessWidget {
  const RouteAzkarEvening({
    super.key,
    required bool isDarkMode,
  }) : _isDarkMode = isDarkMode;

  final bool _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'azkar-evening');
      },
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              _isDarkMode ? const Color(0xFFD7D7D7) : const Color(0xFF3B3B3B),
              _isDarkMode ? const Color(0xFFD7D7D7) : const Color(0xFF3B3B3B),
              _isDarkMode ? const Color(0xFFE7E7E7) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFD7D7D7) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFD7D7D7) : const Color(0xFF303030),
            ],
          ),
        ),
        child: Column(
          children: [
            Text(
              'أذكـار المســاء',
              style: TextStyle(
                fontFamily: 'swissr',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: _isDarkMode
                    ? const Color(0xFF2A2A2A)
                    : const Color(0xFFEBEBEB),
              ),
            ),
            const SizedBox(height: 5),
            Image.asset(
              'assets/images/moon.png',
              width: 45,
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}
