import 'package:flutter/material.dart';
import 'package:mabbit_bmi_calc/controls/reusable_cards.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Your Results:'),
            Expanded(
              child: ReusableCard(
                selected: false,
                child: Column(
                  children: const [
                    Text('NORMAL'),
                    Text('18.5'),
                    Text('You have a normal body weight. Good Job!'),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
              height: 80.0,
              child: const Text('RECALCULATE'),
            ),
          ],
        ),
      ),
    );
  }
}