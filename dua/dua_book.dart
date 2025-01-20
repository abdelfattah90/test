import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DuaBook extends StatefulWidget {
  const DuaBook({super.key});

  @override
  State<DuaBook> createState() => _DuaBookState();
}

class _DuaBookState extends State<DuaBook> {
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child: AppBar(
          backgroundColor: const Color(0xFF353535),
          automaticallyImplyLeading: false,
        ),
      ),
      body: Stack(children: [
        SfPdfViewer.asset(
          'assets/dua.pdf',
          controller: _pdfViewerController,
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x5B2D2D2D),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Color(0xFF373737),
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
