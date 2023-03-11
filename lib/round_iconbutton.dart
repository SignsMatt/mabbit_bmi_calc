import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    this.icon,
    this.onPressed,
  });
  
  final Icon icon;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: Theme.of(context).colorScheme.tertiary,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}