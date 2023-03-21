import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mabbit_bmi_calc/controls/reusable_card.dart';

class GenderSelector extends StatelessWidget {
  const GenderSelector(
      {super.key, required this.gender, required this.selected, this.onTap});

  final Gender gender;
  final bool selected;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ReusableCard(
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
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

enum Gender { male, female }