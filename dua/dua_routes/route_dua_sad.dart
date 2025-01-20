import 'package:flutter/material.dart';

class RouteDuaSad extends StatelessWidget {
  const RouteDuaSad({
    super.key,
    required bool isDarkMode,
  }) : _isDarkMode = isDarkMode;

  final bool _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'dua-sad');
      },
      child: Container(
        margin: const EdgeInsets.only(left: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 35),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
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
              blurRadius: 40,
              offset: const Offset(10, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'أدعية زوال الحــزن',
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
              'assets/images/sujud.png',
              width: 35,
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
