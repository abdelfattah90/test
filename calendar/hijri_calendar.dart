import 'package:flutter/material.dart';

class HijriCalendarScreen extends StatefulWidget {
  const HijriCalendarScreen({super.key});

  @override
  State<HijriCalendarScreen> createState() => _HijriCalendarScreenState();
}

class _HijriCalendarScreenState extends State<HijriCalendarScreen> {
  late ScrollController _scrollController;
  final int _currentPage = DateTime.now().month;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToCurrentMonth();
    });
  }

  void _scrollToCurrentMonth() {
    double itemHeight = MediaQuery.of(context).size.width * 0.6;
    final double scrollTo = itemHeight * (_currentPage - 1);
    _scrollController.animateTo(
      scrollTo,
      duration: const Duration(milliseconds: 1500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          leading: BackButton(
            color: const Color(0xFFFFFFFF),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'التاريخ الميلادى الهجرى  2024 - 1445',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'dinnextregular',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF353535),
                  Color(0xFF353535),
                  Color(0xFF353535)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          foregroundColor: const Color(0xFFFFFFFF),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/calendar.png',
                height: 25.0,
                width: 25.0,
              ),
            )
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(12, (index) {
              bool isCurrentMonth = (index + 1) == _currentPage;
              return Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.7,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isCurrentMonth
                        ? const Color(0xFFCC587F)
                        : Colors.transparent,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  'assets/images/calendar_2024/month_${index + 1}.png',
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
