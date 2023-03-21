import 'package:flutter/material.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: child,
        ),
      ),
    );
  }
}