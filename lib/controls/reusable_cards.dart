import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: selected
            ? Theme.of(context).colorScheme.surfaceVariant
            : Theme.of(context).colorScheme.surface,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(10.0),
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: child,
        ),
      ),
    );
  }
}

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