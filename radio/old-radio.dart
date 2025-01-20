// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:audioplayers/audioplayers.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../utilities/utilities.dart';

// class RadioList extends StatefulWidget {
//   const RadioList({super.key});

//   @override
//   State<RadioList> createState() => _RadioListState();
// }

// class _RadioListState extends State<RadioList> {
//   bool _isDarkMode = false;
//   bool _isConnected = true;
//   bool _isLoading = false;
//   List<dynamic> _radios = [];
//   late AudioPlayer _audioPlayer;
//   PlayerState _playerState = PlayerState.stopped;

//   @override
//   void initState() {
//     super.initState();
//     _loadTheme();
//     _checkInternetConnection();
//     _audioPlayer = AudioPlayer();
//   }

//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     super.dispose();
//   }

//   Future<void> _loadTheme() async {
//     final isDarkMode = await ThemePreferences.isDarkMode();
//     setState(() {
//       _isDarkMode = isDarkMode;
//     });
//   }

//   Future<void> _checkInternetConnection() async {
//     final result = await InternetConnectionChecker().hasConnection;
//     setState(() {
//       _isConnected = result;
//     });
//     if (_isConnected) {
//       _fetchData();
//     }
//   }

//   Future<void> _fetchData() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final response = await http
//           .get(Uri.parse('https://www.mp3quran.net/api/v3/radios?language=ar'));

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body)['radios'];
//         final List<int> indices = [
//           101,
//           102,
//           106,
//           107,
//           108,
//           109,
//           110,
//           113,
//           58,
//           59,
//           60,
//           4,
//           8,
//           10,
//           12,
//           16,
//           97,
//           27,
//           32,
//           33,
//           34,
//           35,
//           37,
//           43,
//           44,
//           51,
//           55,
//           64,
//           65,
//           67,
//           68,
//           69,
//           74,
//           75,
//           77,
//           88,
//           92,
//           94,
//           96,
//           114,
//           99,
//           123,
//           39
//         ];
//         final List<dynamic> selectedRadios =
//             indices.map((index) => responseData[index]).toList();
//         setState(() {
//           _radios = selectedRadios;
//           _isLoading = false;
//         });
//       } else {
//         throw Exception('Failed to load radios');
//       }
//     } catch (e) {
//       setState(() {
//         _isConnected = false;
//         _isLoading = false;
//       });
//     }
//   }

//   void _playAudio(String url) async {
//     try {
//       await _audioPlayer.play(UrlSource(url));
//       setState(() {
//         _playerState = PlayerState.playing;
//       });
//     } catch (e) {
//       // Handle error
//     }
//   }

//   void _stopAudio() {
//     _audioPlayer.stop();
//     setState(() {
//       _playerState = PlayerState.stopped;
//     });
//   }

//   Future<void> _launchTelegram(String telegramLink) async {
//     final Uri telegramUri = Uri.parse(telegramLink);
//     await launchUrl(telegramUri);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(40.0),
//         child: AppBar(
//           leading: BackButton(
//             color: const Color(0xFFFFFFFF),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           backgroundColor: _isDarkMode
//               ? colorStatusBarRashiduns
//               : colorStatusBarRashidunsDark,
//           title: const Padding(
//             padding: EdgeInsets.only(top: 6),
//             child: Text(
//               'إذاعـات قرآنيـة',
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontFamily: 'swissr',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           centerTitle: true,
//           foregroundColor: const Color(0xFFFFFFFF),
//           actions: [
//             IconButton(
//               icon: Icon(
//                 Icons.stop,
//                 size: 30,
//                 color: _playerState == PlayerState.stopped
//                     ? const Color(0xA05F5F5F)
//                     : const Color(0xFFC43B3B),
//               ),
//               onPressed:
//                   _playerState == PlayerState.stopped ? null : _stopAudio,
//             ),
//           ],
//         ),
//       ),
//       body: NotificationListener<ScrollNotification>(
//         child: ScrollbarTheme(
//           data: ScrollbarThemeData(
//             interactive: true,
//             thumbColor: MaterialStateProperty.all<Color>(
//               _isDarkMode ? const Color(0xACBBBBBB) : const Color(0x3CBBBBBB),
//             ),
//             radius: const Radius.circular(2),
//             thickness: MaterialStateProperty.all<double>(7),
//           ),
//           child: Scrollbar(
//             thumbVisibility: true,
//             child: Directionality(
//               textDirection: TextDirection.rtl,
//               child: Container(
//                 color: _isDarkMode ? colorBgSections : colorBgSectionsDark,
//                 height: MediaQuery.of(context).size.height,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         padding: const EdgeInsetsDirectional.symmetric(
//                             horizontal: 15, vertical: 20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'إذاعـة القـرآن الكريـم من القاهرة',
//                               style: TextStyle(
//                                 fontFamily: 'swissr',
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: _isDarkMode
//                                     ? const Color(0xFF474747)
//                                     : const Color(0xFFF7F7F7),
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 _launchTelegram(
//                                     'https://t.me/Quran_Station?livestream');
//                               },
//                               child: Container(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 5, vertical: 5),
//                                 decoration: const BoxDecoration(
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(5)),
//                                     color: Color(0xFF5184a5)),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     const Text(
//                                       'بث تلجرام',
//                                       style: TextStyle(
//                                         fontSize: 12.0,
//                                         fontFamily: 'dinnextregular',
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                     const SizedBox(width: 10),
//                                     Image.asset(
//                                       'assets/images/telegram.png',
//                                       width: 20,
//                                       height: 20,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       _buildBody(), // Your existing body content
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildBody() {
//     if (!_isConnected) {
//       return _buildNoConnectionWidget();
//     } else {
//       return _isLoading ? _buildLoadingWidget() : _buildRadioListWidget();
//     }
//   }

//   Widget _buildNoConnectionWidget() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const SizedBox(height: 50),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             const Text(
//               'لا يوجد إتصال بالأنترنت',
//               style: TextStyle(
//                 color: Colors.red,
//                 fontFamily: 'swissr',
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             IconButton(
//               onPressed: _checkInternetConnection,
//               icon: const Icon(Icons.refresh),
//               color: const Color(0xFF3A96E2),
//               iconSize: 30,
//             ),
//           ],
//         ),
//         const Text(
//           'إذا كنت تواجه مشاكل فى البث يمكنك الأستماع عبر راديو',
//           style: TextStyle(
//             color: Color(0xFF2A8B2D),
//             fontFamily: 'dinnextregular',
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             Navigator.pushNamed(context, 'radio-atheer');
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Container(
//               width: MediaQuery.of(context).size.width * 0.5,
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               decoration: BoxDecoration(
//                 borderRadius: const BorderRadius.all(Radius.circular(5)),
//                 color: _isDarkMode
//                     ? Colors.black.withOpacity(0.2)
//                     : Colors.white.withOpacity(0.2),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     'Atheer Radio',
//                     style: TextStyle(
//                       fontSize: 12.0,
//                       fontFamily: 'dinnextregular',
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Image.asset(
//                     'assets/images/radio-site.png',
//                     width: 25,
//                     height: 25,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildLoadingWidget() {
//     return const Center(
//       child: CircularProgressIndicator(),
//     );
//   }

//   Widget _buildRadioListWidget() {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 1,
//             mainAxisSpacing: 10.0,
//             mainAxisExtent: 55.0,
//           ),
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemCount: _radios.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ElevatedButton(
//               onPressed: () {
//                 _playAudio(_radios[index]['url']);
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 backgroundColor: _isDarkMode
//                     ? const Color(0xFFFFFFFF)
//                     : const Color(0xFF303030),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 5),
//                     child: Text(
//                       _radios[index]['name'],
//                       style: TextStyle(
//                         fontFamily: 'swissr',
//                         fontSize: 13,
//                         color: _isDarkMode
//                             ? const Color(0xFF5F7FB6)
//                             : const Color(0xFFD59662),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Icon(
//                     Icons.play_arrow,
//                     color: _isDarkMode
//                         ? const Color(0xFF303030)
//                         : const Color(0xFFECECEC),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
