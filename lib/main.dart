import 'package:flutter/material.dart';
import 'package:mabbit_bmi_calc/screens/input_page.dart';
import 'package:mabbit_bmi_calc/theming.dart';

void main() {
  runApp(const MabbitBMIApp());
}

class MabbitBMIApp extends StatelessWidget {
  const MabbitBMIApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const InputPage(
        title: 'BMI Calculator',
      ),
    );
  }
}
