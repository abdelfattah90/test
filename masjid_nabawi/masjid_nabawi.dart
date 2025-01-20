import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MasjidNabawi extends StatefulWidget {
  const MasjidNabawi({super.key});

  @override
  State<MasjidNabawi> createState() => _MasjidNabawiState();
}

class _MasjidNabawiState extends State<MasjidNabawi> {
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
          Uri.parse('https://vr.qurancomplex.gov.sa/msq/'),
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
        preferredSize: const Size.fromHeight(8.0),
        child: AppBar(
            backgroundColor: const Color(0xFF353535),
            automaticallyImplyLeading: false),
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
          top: 5,
          left: 25,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x602D2D2D),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Align(
                alignment: Alignment.center,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Color(0xFFF3F3F3),
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
