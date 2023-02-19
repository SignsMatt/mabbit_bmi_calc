import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mabbit_bmi_calc/screens/main_page.dart';

void main() {
  runApp(const MabbitBMIApp());
}

class MabbitBMIApp extends StatelessWidget {
  const MabbitBMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        colors: const FlexSchemeColor(
          primary: Color(0xffeb1555),
          primaryContainer: Color(0xffd0e4ff),
          secondary: Color(0xff090d22),
          secondaryContainer: Color(0xffffdbcf),
          tertiary: Color(0xff1d1e33),
          tertiaryContainer: Color(0xff95f0ff),
          appBarColor: Color(0xffffdbcf),
          error: Color(0xffb00020),
        ),
        usedColors: 2,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 9,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: GoogleFonts.firaSans().fontFamily,
      ),
      darkTheme: FlexThemeData.dark(
        colors: const FlexSchemeColor(
          primary: Color(0xffeb1555),
          primaryContainer: Color(0xffd0e4ff),
          secondary: Color(0xff090d22),
          secondaryContainer: Color(0xffffdbcf),
          tertiary: Color(0xff1d1e33),
          tertiaryContainer: Color(0xff95f0ff),
          appBarColor: Color(0xffffdbcf),
          error: Color(0xffb00020),
        ).defaultError.toDark(10, false),
        usedColors: 2,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 15,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: GoogleFonts.firaSans().fontFamily,
      ),
      themeMode: ThemeMode.system,

      home: const BMIMainPage(
        title: 'BMI Calculator',
      ),
    );
  }
}
