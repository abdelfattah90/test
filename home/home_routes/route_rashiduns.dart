import 'package:flutter/material.dart';

class RouteRashiduns extends StatelessWidget {
  const RouteRashiduns({
    super.key,
    required bool isDarkMode,
  }) : _isDarkMode = isDarkMode;

  final bool _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'rashiduns');
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
              _isDarkMode ? const Color(0xFFF3F3F3) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFF3F3F3) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFF7F7F7) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFF3F3F3) : const Color(0xFF3B3B3B),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: _isDarkMode
                  ? const Color(0xFFDCDCDC)
                  : const Color(0x00000000),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(5, 12),
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              'الخلفـاء الـراشــــدون',
              style: TextStyle(
                fontFamily: 'swissr',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFB49330),
              ),
            ),
            const SizedBox(height: 5),
            Image.asset(
              'assets/images/rashiduns.png',
              width: 45,
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}
