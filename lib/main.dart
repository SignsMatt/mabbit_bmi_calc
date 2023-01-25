import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mabbit_bmi_calc/screens/main_page.dart';
import 'constants.dart';

void main() {
  runApp(const MabbitBMIApp());
}

class MabbitBMIApp extends StatelessWidget {
  const MabbitBMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    final darkTheme = ThemeData.dark().copyWith(
      primaryColor: const Color(0xFFEB1555),
      cardColor: const Color(0xFF111328),
      toggleableActiveColor: const Color(0xFF1D1E33),
      canvasColor: const Color(0xFF090D22),
      backgroundColor: const Color(0xFF090D22),
      scaffoldBackgroundColor: const Color(0xFF090D22),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF1D1E33),
      ),
    );

    final lightTheme = ThemeData.light().copyWith(
      primaryColor: const Color.fromARGB(255, 222, 96, 128),
      cardColor: const Color.fromARGB(255, 192, 192, 210),
      toggleableActiveColor: const Color.fromARGB(255, 108, 108, 168),
      canvasColor: const Color.fromARGB(255, 255, 255, 255),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 108, 108, 168),
      ),
    );

    return MaterialApp(
      title: bmiTitle,
      theme: lightTheme.copyWith(
        textTheme: GoogleFonts.firaSansTextTheme(lightTheme.textTheme).copyWith(
          bodyLarge: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          displayLarge: const TextStyle(
            fontSize: 64.0,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
      ),
      darkTheme: darkTheme.copyWith(
        textTheme: GoogleFonts.firaSansTextTheme(darkTheme.textTheme).copyWith(
          bodyLarge: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      home: const BMIMainPage(title: bmiTitle),
    );
  }
}
