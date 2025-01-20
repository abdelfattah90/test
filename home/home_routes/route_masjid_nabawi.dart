import 'package:flutter/material.dart';

class RouteMasjidNabawi extends StatelessWidget {
  const RouteMasjidNabawi({
    super.key,
    required bool isDarkMode,
  }) : _isDarkMode = isDarkMode;

  final bool _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'masjid-nabawi');
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
              blurRadius: 40,
              offset: const Offset(10, 5),
            ),
          ],
        ),
        child: Stack(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset(
                'assets/images/wifi.png',
                width: 17,
                height: 17,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'المسجد النبوى',
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
                  'assets/images/photo-camera.png',
                  width: 45,
                  height: 45,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
