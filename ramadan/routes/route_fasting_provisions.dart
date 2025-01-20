import 'package:flutter/material.dart';

class RouteFastingProvisions extends StatelessWidget {
  const RouteFastingProvisions({
    super.key,
    required bool isDarkMode,
  }) : _isDarkMode = isDarkMode;

  final bool _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'fasting-provisions');
      },
      child: Container(
        margin: const EdgeInsets.only(left: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              _isDarkMode ? const Color(0xFFEEEEEE) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFF2F2F2) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFF0F0F0) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF303030),
              _isDarkMode ? const Color(0xFFECECEC) : const Color(0xFF3B3B3B),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'من أحكــام الصيــام',
              style: TextStyle(
                fontFamily: 'swissr',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFB49330),
              ),
            ),
            Image.asset(
              'assets/images/ramadan/ramadan2.png',
              width: 30,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
