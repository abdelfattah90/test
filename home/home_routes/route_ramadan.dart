import 'package:flutter/material.dart';

class RouteRamadan extends StatelessWidget {
  const RouteRamadan({
    super.key,
    required bool isDarkMode,
  }) : _isDarkMode = isDarkMode;

  final bool _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'ramadan');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              _isDarkMode ? const Color(0xFFb89a5f) : const Color(0xFF5B3947),
              _isDarkMode ? const Color(0xFFb89a5f) : const Color(0xFF5B3947),
              _isDarkMode ? const Color(0xFFb89a5f) : const Color(0xFF5B3947),
              _isDarkMode ? const Color(0xFFb89a5f) : const Color(0xFF5B3947),
              _isDarkMode ? const Color(0xFFb89a5f) : const Color(0xFF5B3947),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: _isDarkMode
                  ? const Color(0xFFF8F8F8)
                  : const Color(0x00000000),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(5, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: 90,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/ramadan/lamp_ramadan.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'واحـــــة رمـضـــــــــــــــان',
                style: TextStyle(
                  fontFamily: 'swissr',
                  fontSize: 16,
                  color: _isDarkMode
                      ? const Color(0xFFFFFFFF)
                      : const Color(0xFFEBEBEB),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






































// import 'package:flutter/material.dart';

// class RouteRamadan extends StatelessWidget {
//   const RouteRamadan({
//     super.key,
//     required bool isDarkMode,
//   }) : _isDarkMode = isDarkMode;

//   final bool _isDarkMode;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, 'ramadan');
//       },
//       child: Container(
//         margin: const EdgeInsets.only(right: 5),
//         padding: const EdgeInsets.symmetric(vertical: 20),
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.all(Radius.circular(30)),
//           gradient: LinearGradient(
//             begin: Alignment.bottomLeft,
//             end: Alignment.topRight,
//             colors: [
//               _isDarkMode ? const Color(0xFFA68E62) : const Color(0xFF303030),
//               _isDarkMode ? const Color(0xFFA68E62) : const Color(0xFF3B3B3B),
//               _isDarkMode ? const Color(0xFFA68E62) : const Color(0xFF303030),
//               _isDarkMode ? const Color(0xFFA68E62) : const Color(0xFF303030),
//               _isDarkMode ? const Color(0xFFA68E62) : const Color(0xFF282828),
//             ],
//           ),
//         ),
//         child: Column(
//           children: [
//             Text(
//               'واحــة رمـضـــان',
//               style: TextStyle(
//                 fontFamily: 'swissr',
//                 fontSize: 14,
//                 color: _isDarkMode
//                     ? const Color(0xFFFFFFFF)
//                     : const Color(0xFFA68E62),
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 5),
//             Image.asset(
//               'assets/images/ramadan.png',
//               width: 45,
//               height: 45,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

