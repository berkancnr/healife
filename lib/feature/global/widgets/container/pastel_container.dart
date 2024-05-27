import 'package:flutter/material.dart';

class PastelContainer extends StatelessWidget {
  final Widget child;
  const PastelContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
