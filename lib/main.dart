import 'package:flutter/material.dart';
import 'package:mabbit_bmi_calc/screens/main_page.dart';
import 'constants.dart';

void main() {
  runApp(const MabbitBMIApp());
}

class MabbitBMIApp extends StatelessWidget {
  const MabbitBMIApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: bmiTitle,
      theme: AppThemeData.lightThemeData,
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFFEB1555),
        cardColor: const Color(0xFF111328),
        toggleableActiveColor: const Color(0xFF1D1E33),
        canvasColor: const Color(0xFF090D22),
        backgroundColor: const Color(0xFF090D22),
        scaffoldBackgroundColor: const Color(0xFF090D22),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF1D1E33),
        ),
      ),
      home: const MyHomePage(title: bmiTitle),
    );
  }
}
