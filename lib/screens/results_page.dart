import 'package:flutter/material.dart';
import 'package:mabbit_bmi_calc/controls/reusable_card.dart';
import 'package:mabbit_bmi_calc/controls/settings_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
        actions: const [
          SettingsButton(),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Your Results:', style: Theme.of(context).textTheme.headlineLarge,),
          Expanded(
            child: ReusableCard(
              selected: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'NORMAL',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '18.5',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text('You have a normal body weight. Good Job!',
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              minimumSize: const Size(double.infinity, 80.0),
              shape: const RoundedRectangleBorder(),
            ),
            child: Text(
              'RECALCULATE',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
