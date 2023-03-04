import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const ColorScheme lightScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffeb1555),
  onPrimary: Color(0xffffffff),
  secondary: Color(0xff090d22),
  onSecondary: Color(0xffffffff),
  error: Colors.red,
  onError: Colors.white,
  background: Color(0xFF090D22),
  onBackground: Colors.white,
  surface: Color(0xFF111328),
  onSurface: Colors.white,
  surfaceVariant: Color(0xFF1D1E33),
);

const ColorScheme darkScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xffeb1555),
  onPrimary: Color(0xffffffff),
  secondary: Color(0xff090d22),
  onSecondary: Color(0xffffffff),
  error: Colors.red,
  onError: Colors.white,
  background: Color(0xFF090D22),
  onBackground: Colors.white,
  surface: Color(0xFF111328),
  onSurface: Colors.white,
  surfaceVariant: Color(0xFF1D1E33),
);

TextTheme textThemes = const TextTheme(
  titleLarge: TextStyle(
    fontWeight: FontWeight.bold,
  ),
  headlineLarge: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 50.0,
  ),
);

ThemeData lightTheme = ThemeData(
  colorScheme: lightScheme,
  fontFamily: GoogleFonts.firaSans().fontFamily,
  textTheme: textThemes,
);

ThemeData darkTheme = ThemeData(
  colorScheme: darkScheme,
  fontFamily: GoogleFonts.firaSans().fontFamily,
  textTheme: textThemes,
);
