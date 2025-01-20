import 'package:flutter/material.dart';

class RouteAzkarMorning extends StatelessWidget {
  const RouteAzkarMorning({
    super.key,
    required bool isDarkMode,
  }) : _isDarkMode = isDarkMode;

  final bool _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'azkar-morning');
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
              _isDarkMode ? const Color(0x615B7D9E) : const Color(0xFF3B3B3B),
              _isDarkMode ? const Color(0x615B7D9E) : const Color(0xFF303030),
              _isDarkMode ? const Color(0x5F769DC3) : const Color(0xFF303030),
              _isDarkMode ? const Color(0x5F769DC3) : const Color(0xFF303030),
              _isDarkMode ? const Color(0x615B7D9E) : const Color(0xFF303030),
            ],
          ),
        ),
        child: Column(
          children: [
            Text(
              'أذكـار الصبــاح',
              style: TextStyle(
                fontFamily: 'swissr',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: _isDarkMode
                    ? const Color(0xFF2A2A2A)
                    : const Color(0xFF6581B1),
              ),
            ),
            const SizedBox(height: 5),
            Image.asset(
              'assets/images/sunrise.png',
              width: 45,
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}
