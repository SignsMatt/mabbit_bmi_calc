import 'package:flutter/material.dart';
import 'package:mabbit_bmi_calc/controls/reusable_card.dart';
import 'package:mabbit_bmi_calc/controls/round_iconbutton.dart';
import 'package:mabbit_bmi_calc/controls/settings_button.dart';
import 'package:mabbit_bmi_calc/screens/results_page.dart';
import 'package:mabbit_bmi_calc/controls/gender_selector.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isMaleSelected = true;
  double height = 180.0;
  int weight = 60;
  int age = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: const [
          SettingsButton(),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Top Row: Gender Selector
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GenderSelector(
                    gender: Gender.male,
                    selected: isMaleSelected,
                    onTap: () {
                      setState(() {
                        isMaleSelected = true;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GenderSelector(
                    gender: Gender.female,
                    selected: !isMaleSelected,
                    onTap: () {
                      setState(() {
                        isMaleSelected = false;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          // Second Row: Height Slider
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    selected: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toStringAsFixed(0),
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              'cm',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                        Slider(
                            value: height,
                            onChanged: (value) {
                              setState(() {
                                height = value;
                              });
                            },
                            min: 100.0,
                            max: 220.0)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Third Row: Weight and Age Selectors
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    selected: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '$weight',
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                              Text(
                                'kg',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    selected: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$age',
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //Fourth Row: Calculate Button
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResultsPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    minimumSize: const Size(0.0, 80.0),
                    shape: const RoundedRectangleBorder(),
                  ),
                  child: Text(
                    'CALCULATE',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      
    );
  }
}
