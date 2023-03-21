import 'package:flutter/material.dart';
import 'package:mabbit_bmi_calc/screens/settings_page.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const SettingsPage(),
          ),
        );
      },
    );
  }
}
