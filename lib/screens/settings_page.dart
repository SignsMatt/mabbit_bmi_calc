import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Center(
        child: Text('This is the Settings page.'),
      ),
    );
  }
}
