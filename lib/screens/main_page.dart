import 'package:flutter/material.dart';
import 'package:mabbit_bmi_calc/reusable_cards.dart';


class BMIMainPage extends StatefulWidget {
  const BMIMainPage({super.key, required this.title});

  final String title;

  @override
  State<BMIMainPage> createState() => _BMIMainPageState();
}

class _BMIMainPageState extends State<BMIMainPage> {
  double sliderValue = 180.0;
  bool isMaleSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                sliderValue.toStringAsFixed(0),
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                              Text(
                                'cm',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ],
                          ),
                          Slider(
                              value: sliderValue,
                              onChanged: (value) {
                                setState(() {
                                  sliderValue = value;
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
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      selected: false,
                      child: Column(
                        children: [
                          Text(
                            'WEIGHT',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      selected: false,
                      child: Column(
                        children: [
                          Text(
                            'AGE',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigate to next screen
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: const Size(0.0, 80.0),
                    ),
                    child: Text(
                      'CALCULATE',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
