import 'package:flutter/material.dart';

class RouteSeira extends StatelessWidget {
  const RouteSeira({
    super.key,
    required bool isDarkMode,
  }) : _isDarkMode = isDarkMode;

  final bool _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'seira-home');
      },
      child: Container(
        margin: const EdgeInsets.only(left: 5),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'السيــــرة النبـــويـة',
              style: TextStyle(
                fontFamily: 'swissr',
                fontSize: 14,
                color: _isDarkMode
                    ? const Color(0xFF474747)
                    : const Color(0xFFB49330),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Image.asset(
              'assets/images/prophet_mohamed.png',
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
