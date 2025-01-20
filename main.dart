import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes/routes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0x80C3C3C3),
        systemNavigationBarIconBrightness: Brightness.dark,
        // statusBarBrightness: Brightness.dark,
        // statusBarColor: Color(0xFFFFFFFF),
        // statusBarIconBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'السيرة النبوية',
      routes: routesList,
      theme: ThemeData(
        dividerColor: const Color(0x0A000000),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFA68E62),
        ),
      ),
    );
  }
}
