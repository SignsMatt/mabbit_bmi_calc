import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: const [
                  GenderSelector(gender: Gender.male, selected: true),
                  GenderSelector(gender: Gender.female, selected: false),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    selected: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('HEIGHT'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('183'),
                            Text('cm'),
                          ],
                        ),
                        const Slider(
                            value: 183.0,
                            onChanged: null,
                            min: 100.0,
                            max: 220.0)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    selected: false,
                    child: Column(
                      children: const [Text('WEIGHT')],
                    ),
                  ),
                  ReusableCard(
                    selected: false,
                    child: Column(
                      children: const [Text('AGE')],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: null,
                    child: Container(
                      height: 80.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                      ),
                      child: const Text('CALCULATE'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final bool selected;
  final Widget? child;

  const ReusableCard({
    Key? key,
    required this.selected,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: selected
              ? Theme.of(context).toggleableActiveColor
              : Theme.of(context).cardColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: child,
          ),
        ),
      ),
    );
  }
}

class GenderSelector extends StatelessWidget {
  const GenderSelector(
      {super.key, required this.gender, required this.selected});

  final Gender gender;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      selected: selected,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            gender == Gender.male
                ? FontAwesomeIcons.mars
                : FontAwesomeIcons.venus,
            size: 72.0,
          ),
          const SizedBox(height: 15.0),
          Text(
            gender == Gender.male ? 'MALE' : 'FEMALE',
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

enum Gender { male, female }
