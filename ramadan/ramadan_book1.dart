import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../utilities/utilities.dart';

class RamadanBook1 extends StatefulWidget {
  const RamadanBook1({super.key});

  @override
  State<RamadanBook1> createState() => _RamadanBook1State();
}

class _RamadanBook1State extends State<RamadanBook1> {
  late WebViewController controller;
  var loadingPercentage = 0;
  bool isConnected = true;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    controller = WebViewController();
    checkInternetConnection();
  }

  Future<void> checkInternetConnection() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (!result) {
      setState(() {
        isConnected = false;
      });
    } else {
      loadVR();
    }
  }

  Future<void> loadVR() async {
    setState(() {
      controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
        ))
        ..loadRequest(
          Uri.parse(
              'https://ketabonline.com/ar/books/21939/read?part=1&page=1&index=5728910'),
        );
      isLoading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child: AppBar(
          backgroundColor: colorStatusBarRashiduns,
          automaticallyImplyLeading: false,
        ),
      ),
      body: Stack(children: [
        Container(
          child: isConnected
              ? isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        if (loadingPercentage < 100)
                          LinearProgressIndicator(
                              value: loadingPercentage / 100.0),
                        Expanded(
                          child: WebViewWidget(
                            controller: controller,
                          ),
                        ),
                      ],
                    )
              : const Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'لا يوجد إتصال بالأنترنت',
                            style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'swissr',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x602D2D2D),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Color(0xFFFFFFFF),
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
