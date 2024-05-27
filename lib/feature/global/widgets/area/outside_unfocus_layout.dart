import 'package:flutter/material.dart';

class OutsideUnfocusLayout extends StatelessWidget {
  final Widget child;
  const OutsideUnfocusLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: child,
    );
  }
}
