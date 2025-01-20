// import 'package:flutter/material.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import '../utilities/utilities.dart';

// class EgyRadio extends StatefulWidget {
//   const EgyRadio({super.key});

//   @override
//   State<EgyRadio> createState() => _EgyRadioState();
// }

// class _EgyRadioState extends State<EgyRadio> {
//   late WebViewController controller;
//   var loadingPercentage = 0;
//   bool isConnected = true;
//   bool isLoading = false;
//   bool _isDarkMode = false;

//   @override
//   void initState() {
//     super.initState();
//     loadTheme();
//     checkInternetConnection();
//     controller = WebViewController();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   loadTheme() async {
//     bool isDarkMode = await ThemePreferences.isDarkMode();
//     setState(() {
//       _isDarkMode = isDarkMode;
//     });
//   }

//   Future<void> checkInternetConnection() async {
//     final result = await InternetConnectionChecker().hasConnection;
//     setState(() {
//       isConnected = result;
//     });
//     if (isConnected) {
//       loadRadio();
//     }
//   }

//   Future<void> loadRadio() async {
//     setState(() {
//       isLoading = true;
//     });
//     try {
//       controller = WebViewController()
//         ..setJavaScriptMode(JavaScriptMode.unrestricted)
//         ..setNavigationDelegate(NavigationDelegate(
//           onPageStarted: (url) {
//             setState(() {
//               loadingPercentage = 0;
//             });
//           },
//           onProgress: (progress) {
//             setState(() {
//               loadingPercentage = progress;
//             });
//           },
//           onPageFinished: (url) {
//             setState(() {
//               loadingPercentage = 100;
//             });
//           },
//         ))
//         ..loadRequest(
//           Uri.parse(
//               'https://n01.radiojar.com/8s5u5tpdtwzuv?rj-ttl=5&rj-tok=AAABjd7cO9MAzzCvbklsRyQNgA'),
//         );
//       setState(() {
//         isLoading = false;
//       });
//     } catch (e) {
//       setState(() {
//         isConnected = false;
//         isLoading = false;
//       });
//     }
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
//           centerTitle: true,
//           flexibleSpace: Container(),
//           foregroundColor: const Color(0xFFFFFFFF),
//           backgroundColor: _isDarkMode
//               ? colorStatusBarRashiduns
//               : colorStatusBarRashidunsDark,
//           title: const Padding(
//             padding: EdgeInsets.only(top: 6),
//             child: Text(
//               'إذاعـة القــرآن الكـريـم',
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontFamily: 'swissr',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Image.asset(
//                 'assets/images/radio-atheer.png',
//                 height: 25.0,
//                 width: 25.0,
//               ),
//             )
//           ],
//         ),
//       ),
//       body: _buildBody(),
//     );
//   }

//   Widget _buildBody() {
//     if (!isConnected) {
//       return buildNoConnectionWidget();
//     } else {
//       return isLoading ? buildLoadingWidget() : buildRadioListWidget();
//     }
//   }

//   Widget buildNoConnectionWidget() {
//     return const Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(height: 50),
//         Text(
//           'لا يوجد إتصال بالأنترنت',
//           style: TextStyle(
//             color: Colors.red,
//             fontFamily: 'swissr',
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget buildLoadingWidget() {
//     return const Center(
//       child: CircularProgressIndicator(),
//     );
//   }

//   Widget buildRadioListWidget() {
//     return Stack(
//       children: [
//         Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/radio-lantern.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: SingleChildScrollView(
//             child: Stack(
//               children: [
//                 if (loadingPercentage < 100)
//                   LinearProgressIndicator(value: loadingPercentage / 100.0),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.35,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(20),
//                     child: WebViewWidget(controller: controller),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
